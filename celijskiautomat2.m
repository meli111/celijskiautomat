function celijskiautomat2(n,p,t)
  % Ćelijski automat generiše animaciju razvitka ćelija počev od 5 centralnih ćelija, 
  % u zadatim vremenu t pomoću zadate verovatnoće p, na mreži dimenzija nxn.
  % Primer:  celijskiautomat2(70,0.9,15)
  
tip1=0;
tip2=1;
tip3=0.5;

A=zeros(n,n);

A(round(n/2),round(n/2))=1;
A(round(n/2)+1,round(n/2))=1;
A(round(n/2)-1,round(n/2))=1;
A(round(n/2),round(n/2)+1)=1;
A(round(n/2),round(n/2)-1)=1;

imshow(A);
pause(0.1);
ind=0;

for m=1:round(t)
    for j=2:n-1
        for k=2:n-1
            
           [A(j,k),ind]=zivot2(p,A(j,k),A(j-1,k),A(j+1,k),A(j,k-1),A(j,k+1));
           
            switch ind
              case 1,
               if A(j-1,k)==tip1
                 A(j-1,k)=tip3;
               end
                if A(j+1,k)==tip1
                 A(j+1,k)=tip3;
               end
                if A(j,k-1)==tip1
                 A(j,k-1)=tip3;
               end
                if A(j,k+1)==tip1
                 A(j,k+1)=tip3;
                 end 
                case 2,
                    A(j-1,k)=tip2;
                case 3,
                    A(j+1,k)=tip2;
                case 4,
                    A(j,k-1)=tip2;
                case 5,
                    A(j,k+1)=tip2;
            end 
        end
   imshow(A);
   pause(0.1);       
    end

end