
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {scalar_t__* palette; } ;
typedef int fz_context ;


 int fz_absi (scalar_t__) ;

__attribute__((used)) static int
bmp_palette_is_gray(fz_context *ctx, struct info *info, int readcolors)
{
 int i;
 for (i = 0; i < readcolors; i++)
 {
  int rgdiff = fz_absi(info->palette[3 * i + 0] - info->palette[3 * i + 1]);
  int gbdiff = fz_absi(info->palette[3 * i + 1] - info->palette[3 * i + 2]);
  int rbdiff = fz_absi(info->palette[3 * i + 0] - info->palette[3 * i + 2]);
  if (rgdiff > 2 || gbdiff > 2 || rbdiff > 2)
   return 0;
 }
 return 1;
}
