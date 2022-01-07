
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int depth; int n; int width; int height; } ;
typedef int fz_context ;


 int* adam7_dx ;
 int* adam7_dy ;
 int* adam7_ix ;
 int* adam7_iy ;

__attribute__((used)) static void
png_deinterlace_passes(fz_context *ctx, struct info *info, unsigned int *w, unsigned int *h, unsigned int *ofs)
{
 int p, bpp = info->depth * info->n;
 ofs[0] = 0;
 for (p = 0; p < 7; p++)
 {
  w[p] = (info->width + adam7_dx[p] - adam7_ix[p] - 1) / adam7_dx[p];
  h[p] = (info->height + adam7_dy[p] - adam7_iy[p] - 1) / adam7_dy[p];
  if (w[p] == 0) h[p] = 0;
  if (h[p] == 0) w[p] = 0;
  if (w[p] && h[p])
   ofs[p + 1] = ofs[p] + h[p] * (1 + (w[p] * bpp + 7) / 8);
  else
   ofs[p + 1] = ofs[p];
 }
}
