
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Bitx ;
 unsigned int Maskx ;
 unsigned int Rune1 ;
 unsigned int Rune2 ;
 unsigned int Rune3 ;
 unsigned int Runeerror ;
 unsigned int Runemax ;
 unsigned int T2 ;
 unsigned int T3 ;
 unsigned int T4 ;
 unsigned int Tx ;

int
fz_runetochar(char *str, int rune)
{

 unsigned int c = (unsigned int)rune;





 if(c <= Rune1) {
  str[0] = c;
  return 1;
 }





 if(c <= Rune2) {
  str[0] = T2 | (c >> 1*Bitx);
  str[1] = Tx | (c & Maskx);
  return 2;
 }







 if (c > Runemax)
  c = Runeerror;





 if (c <= Rune3) {
  str[0] = T3 | (c >> 2*Bitx);
  str[1] = Tx | ((c >> 1*Bitx) & Maskx);
  str[2] = Tx | (c & Maskx);
  return 3;
 }





 str[0] = T4 | (c >> 3*Bitx);
 str[1] = Tx | ((c >> 2*Bitx) & Maskx);
 str[2] = Tx | ((c >> 1*Bitx) & Maskx);
 str[3] = Tx | (c & Maskx);
 return 4;
}
