
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned int stb_fgetc (int *) ;

unsigned int stb_fget_varlenu(FILE *f)
{
   unsigned int z;
   unsigned char d;
   d = stb_fgetc(f);

   if (d >= 0x80) {
      if (d >= 0xc0) {
         if (d >= 0xe0) {
            if (d == 0xf0) z = stb_fgetc(f) << 24;
            else z = (d - 0xe0) << 24;
            z += stb_fgetc(f) << 16;
         }
         else
            z = (d - 0xc0) << 16;
         z += stb_fgetc(f) << 8;
      } else
         z = (d - 0x80) << 8;
      z += stb_fgetc(f);
   } else
      z = d;
   return z;
}
