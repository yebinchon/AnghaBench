
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zbuf ;


 int e (char*,char*) ;
 int zget8 (int *) ;

__attribute__((used)) static int parse_zlib_header(zbuf *a)
{
   int cmf = zget8(a);
   int cm = cmf & 15;

   int flg = zget8(a);
   if ((cmf*256+flg) % 31 != 0) return e("bad zlib header","Corrupt PNG");
   if (flg & 32) return e("no preset dict","Corrupt PNG");
   if (cm != 8) return e("bad compression","Corrupt PNG");

   return 1;
}
