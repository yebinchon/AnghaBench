
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {unsigned char* mask; unsigned int height; unsigned int width; int pix; } ;
typedef int fz_context ;


 unsigned char* fz_pixmap_samples (int *,int ) ;

__attribute__((used)) static void
gif_mask_transparency(fz_context *ctx, struct info *info)
{
 unsigned char *mp = info->mask;
 unsigned char *dp = fz_pixmap_samples(ctx, info->pix);
 unsigned int x, y;

 for (y = 0; y < info->height; y++)
  for (x = 0; x < info->width; x++, mp++, dp += 4)
   if (*mp == 0x00)
    dp[3] = 0;
}
