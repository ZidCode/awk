#!/usr/bin/awk -f
BEGIN{expo = 0;}
{ if (NR>14 && NR%2 == 1) 
    expo = $1;
  else if(NR>14 && NR%2 == 0) {
    gsub(",",".",$0);
    gsub("·10","",$0);
    printf("%d, %f, %f\n", $1, (float)$2 * (10 ^ expo), $3) > "mod_tab3.txt";
  }
}
