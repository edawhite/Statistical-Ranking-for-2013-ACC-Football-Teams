%% Colley's method
games=abs(Scores1);
total=sum(games,2);
ColleyMatrix=2.*eye(14)+diag(total)-games;
RightSide=(1+0.5.*sum(Scores1,2));
RanksColley=ColleyMatrix\RightSide;
Teams={'Boston College', 'Clemson', 'Duke', 'Florida State',...
           'Georgia Tech', 'Maryland', 'Miami',...
           'North Carolina', 'NC State', 'Pittsburgh','Syracuse','Virginia','Virginia Tech','Wake Forest'};
          [RanksDescend,Order]=sort(RanksColley,'descend');
fprintf('\n');
  for j=1:14
    fprintf('%8.3f %-15s\n' , RanksColley(Order(j)), Teams{Order(j)})
  end;