
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tiff_getcomp (unsigned char*,int,int) ;
 int tiff_putcomp (unsigned char*,int,int,int) ;

__attribute__((used)) static void
tiff_invert_line(unsigned char *line, int width, int comps, int bits, int alpha)
{
 int i, k, v;
 int m = (1 << bits) - 1;

 for (i = 0; i < width; i++)
 {
  for (k = 0; k < comps; k++)
  {
   v = tiff_getcomp(line, i * comps + k, bits);
   if (!alpha || k < comps - 1)
    v = m - v;
   tiff_putcomp(line, i * comps + k, bits, v);
  }
 }
}
