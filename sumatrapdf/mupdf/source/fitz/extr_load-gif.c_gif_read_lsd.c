
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {unsigned char width; unsigned char height; unsigned char has_gct; int gct_entries; unsigned char aspect; int xres; int yres; int gct_background; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int UINT_MAX ;
 int fz_clampi (unsigned char const,int ,int) ;
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static const unsigned char *
gif_read_lsd(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 if (end - p < 7)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in logical screen descriptor in gif image");

 info->width = p[1] << 8 | p[0];
 info->height = p[3] << 8 | p[2];
 if (info->width <= 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "image width must be > 0");
 if (info->height <= 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "image height must be > 0");
 if (info->height > UINT_MAX / info->width / 3 )
  fz_throw(ctx, FZ_ERROR_GENERIC, "image dimensions might overflow");

 info->has_gct = (p[4] >> 7) & 0x1;
 if (info->has_gct)
 {
  info->gct_entries = 1 << ((p[4] & 0x7) + 1);
  info->gct_background = fz_clampi(p[5], 0, info->gct_entries - 1);
 }
 info->aspect = p[6];

 info->xres = 96;
 info->yres= 96;
 if (info->aspect > 0)
  info->yres = (((float) info->aspect + 15) / 64) * 96;

 return p + 7;
}
