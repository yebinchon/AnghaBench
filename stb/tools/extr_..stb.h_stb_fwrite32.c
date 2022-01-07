
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint32 ;
typedef int FILE ;


 int fwrite (int *,int,int,int *) ;

void stb_fwrite32(FILE *f, stb_uint32 x)
{
   fwrite(&x, 4, 1, f);
}
