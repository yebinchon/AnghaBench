
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rune ;


 int Bitx ;
 int Maskx ;
 int Rune1 ;
 int Rune2 ;
 int T2 ;
 int T3 ;
 int Tx ;

int
runetochar(char *str, const Rune *rune)
{
 int c;





 c = *rune;
 if(c <= Rune1) {
  str[0] = c;
  return 1;
 }





 if(c <= Rune2) {
  str[0] = T2 | (c >> 1*Bitx);
  str[1] = Tx | (c & Maskx);
  return 2;
 }





 str[0] = T3 | (c >> 2*Bitx);
 str[1] = Tx | ((c >> 1*Bitx) & Maskx);
 str[2] = Tx | (c & Maskx);
 return 3;
}
