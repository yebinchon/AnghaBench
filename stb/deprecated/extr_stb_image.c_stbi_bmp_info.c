
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int get16le (int *) ;
 int get32le (int *) ;
 char get8 (int *) ;
 int skip (int *,int) ;
 int stbi_rewind (int *) ;

__attribute__((used)) static int stbi_bmp_info(stbi *s, int *x, int *y, int *comp)
{
   int hsz;
   if (get8(s) != 'B' || get8(s) != 'M') {
       stbi_rewind( s );
       return 0;
   }
   skip(s,12);
   hsz = get32le(s);
   if (hsz != 12 && hsz != 40 && hsz != 56 && hsz != 108) {
       stbi_rewind( s );
       return 0;
   }
   if (hsz == 12) {
      *x = get16le(s);
      *y = get16le(s);
   } else {
      *x = get32le(s);
      *y = get32le(s);
   }
   if (get16le(s) != 1) {
       stbi_rewind( s );
       return 0;
   }
   *comp = get16le(s) / 8;
   return 1;
}
