
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint ;
typedef int FILE ;


 unsigned int stb_fgetc (int *) ;

int stb_fget_ranged(FILE *f, int b, stb_uint n)
{
   unsigned int v=0;
   if (n > (1 << 24)) v += stb_fgetc(f) << 24;
   if (n > (1 << 16)) v += stb_fgetc(f) << 16;
   if (n > (1 << 8)) v += stb_fgetc(f) << 8;
   v += stb_fgetc(f);
   return b+v;
}
