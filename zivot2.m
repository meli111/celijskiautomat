function[vr,ind]=zivot2(p,n,n1,n2,n3,n4)

tip1=0;
tip2=1;
tip3=0.5;

vr=n;
ind=0;

if n==tip2 
   if rand(1)<p
       if n1==0 || n2==0 || n3==0 || n4==0
          ind=1;
          vr=n;
       end
   if rand(1)<p/3
          vr=tip1;
    end
end

if n==tip3
  if rand(1)<p
          vr=tip2;
   if rand(1)<p/2
          vr=tip1;
    end
  end
end  

if n==tip1 
   if rand(1)<p
        vr=tip2;
   end
end       
  

end