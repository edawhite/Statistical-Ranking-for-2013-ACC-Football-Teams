 %% Massey’s method
       l=0;
       for j=1:13
           for k=j+1:14
                if Differentials1(j,k)~=0
                   l=l+1;
                   P(l,j)=1;
                   P(l,k)=-1;
                   B(l)=Differentials1(j,k);
                end; 
           end;
        end;
A=P'*P;
D=P'*B';
A(14,:)=[1 1 1 1 1 1 1 1 1 1 1 1 1 1];
D(14)=0;
RanksMassey=A\D;
[RanksDescend,Order]=sort(RanksMassey,'descend');
fprintf('\n');
for j=1:14
           fprintf('%8.3f %-15s\n', RanksMassey(Order(j)), Teams{Order(j)})
end;