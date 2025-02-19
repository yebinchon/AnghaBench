
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int bitcount; int colors; scalar_t__ palettetype; void** palette; } ;
typedef int fz_context ;


 int bmp_load_default_palette (int *,struct info*,int) ;
 int fz_mini (int,int) ;
 void* read8 (unsigned char const*) ;

__attribute__((used)) static const unsigned char *
bmp_read_color_table(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 int i, colors, readcolors;

 if (info->bitcount > 8)
  return p;

 if (info->colors == 0)
  colors = 1 << info->bitcount;
 else
  colors = info->colors;

 colors = fz_mini(colors, 1 << info->bitcount);

 if (info->palettetype == 0)
 {
  readcolors = fz_mini(colors, (end - p) / 3);
  for (i = 0; i < readcolors; i++)
  {
   info->palette[3 * i + 0] = read8(p + i * 3 + 2);
   info->palette[3 * i + 1] = read8(p + i * 3 + 1);
   info->palette[3 * i + 2] = read8(p + i * 3 + 0);
  }
  if (readcolors < colors)
   bmp_load_default_palette(ctx, info, readcolors);
  return p + readcolors * 3;
 }
 else
 {
  readcolors = fz_mini(colors, (end - p) / 4);
  for (i = 0; i < readcolors; i++)
  {

   info->palette[3 * i + 0] = read8(p + i * 4 + 2);
   info->palette[3 * i + 1] = read8(p + i * 4 + 1);
   info->palette[3 * i + 2] = read8(p + i * 4 + 0);
  }
  if (readcolors < colors)
   bmp_load_default_palette(ctx, info, readcolors);
  return p + readcolors * 4;
 }

 return p;
}
