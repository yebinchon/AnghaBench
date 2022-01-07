
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {unsigned int image_top; unsigned int width; unsigned int image_left; unsigned char* mask; unsigned int height; unsigned int image_width; unsigned char transparent; int has_transparency; int pix; } ;
typedef int fz_context ;


 int fz_clampi (unsigned char,int ,int) ;
 unsigned char* fz_pixmap_samples (int *,int ) ;

__attribute__((used)) static void
gif_read_line(fz_context *ctx, struct info *info, int ct_entries, const unsigned char *ct, unsigned int y, unsigned char *sp)
{
 unsigned int index = (info->image_top + y) * info->width + info->image_left;
 unsigned char *samples = fz_pixmap_samples(ctx, info->pix);
 unsigned char *dp = &samples[index * 4];
 unsigned char *mp = &info->mask[index];
 unsigned int x, k;

 if (info->image_top + y >= info->height)
  return;

 for (x = 0; x < info->image_width && info->image_left + x < info->width; x++, sp++, mp++, dp += 4)
  if (!info->has_transparency || *sp != info->transparent)
  {
   *mp = 0x02;
   for (k = 0; k < 3; k++)
    dp[k] = ct[fz_clampi(*sp, 0, ct_entries - 1) * 3 + k];
   dp[3] = 255;
  }
  else if (*mp == 0x01)
   *mp = 0x00;
}
