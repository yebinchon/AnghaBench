
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int Rune ;


 int Bad ;
 int Bitx ;
 int Rune1 ;
 int Rune2 ;
 int Rune3 ;
 int T2 ;
 int T3 ;
 int T4 ;
 int Testx ;
 int Tx ;

int
chartorune(Rune *rune, const char *str)
{
 int c, c1, c2;
 int l;





 c = *(uchar*)str;
 if(c < Tx) {
  *rune = c;
  return 1;
 }





 c1 = *(uchar*)(str+1) ^ Tx;
 if(c1 & Testx)
  goto bad;
 if(c < T3) {
  if(c < T2)
   goto bad;
  l = ((c << Bitx) | c1) & Rune2;
  if(l <= Rune1)
   goto bad;
  *rune = l;
  return 2;
 }





 c2 = *(uchar*)(str+2) ^ Tx;
 if(c2 & Testx)
  goto bad;
 if(c < T4) {
  l = ((((c << Bitx) | c1) << Bitx) | c2) & Rune3;
  if(l <= Rune2)
   goto bad;
  *rune = l;
  return 3;
 }




bad:
 *rune = Bad;
 return 1;
}
