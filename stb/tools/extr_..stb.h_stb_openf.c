
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * f; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ stbfile ;
typedef int FILE ;


 scalar_t__ malloc (int) ;
 int stb__fbackpatch ;
 int stb__fclose ;
 int stb__fgetbyte ;
 int stb__fgetdata ;
 int stb__fputbyte ;
 int stb__fputdata ;
 int stb__fsize ;
 int stb__ftell ;

stbfile *stb_openf(FILE *f)
{
   stbfile m = { stb__fgetbyte, stb__fgetdata,
                 stb__fputbyte, stb__fputdata,
                 stb__fsize, stb__ftell, stb__fbackpatch, stb__fclose,
                 0,0,0, };
   stbfile *z = (stbfile *) malloc(sizeof(*z));
   if (z) {
      *z = m;
      z->f = f;
   }
   return z;
}
