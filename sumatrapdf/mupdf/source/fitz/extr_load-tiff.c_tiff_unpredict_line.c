
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FZ_MAX_COLORS ;
 int tiff_getcomp (unsigned char*,int,int) ;
 int tiff_putcomp (unsigned char*,int,int,int) ;

__attribute__((used)) static void
tiff_unpredict_line(unsigned char *line, int width, int comps, int bits)
{
 unsigned char left[FZ_MAX_COLORS];
 int i, k, v;

 for (k = 0; k < comps; k++)
  left[k] = 0;

 for (i = 0; i < width; i++)
 {
  for (k = 0; k < comps; k++)
  {
   v = tiff_getcomp(line, i * comps + k, bits);
   v = v + left[k];
   v = v % (1 << bits);
   tiff_putcomp(line, i * comps + k, bits, v);
   left[k] = v;
  }
 }
}
