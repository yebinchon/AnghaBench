
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned int stb_fget_varlenu (int *) ;

int stb_fget_varlen(FILE *f)
{
   unsigned int z = stb_fget_varlenu(f);
   return (z & 1) ? ~(z>>1) : (z>>1);
}
