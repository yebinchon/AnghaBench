
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int get16 (int *) ;
 int get8 (int *) ;
 int get8u (int *) ;

__attribute__((used)) static int tga_test(stbi *s)
{
   int sz;
   get8u(s);
   sz = get8u(s);
   if ( sz > 1 ) return 0;
   sz = get8u(s);
   if ( (sz != 1) && (sz != 2) && (sz != 3) && (sz != 9) && (sz != 10) && (sz != 11) ) return 0;
   get16(s);
   get16(s);
   get8(s);
   get16(s);
   get16(s);
   if ( get16(s) < 1 ) return 0;
   if ( get16(s) < 1 ) return 0;
   sz = get8(s);
   if ( (sz != 8) && (sz != 16) && (sz != 24) && (sz != 32) ) return 0;
   return 1;
}
