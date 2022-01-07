
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int xres; int yres; scalar_t__ palettetype; int compression; void* bitcount; void* height; void* width; } ;
typedef int fz_context ;


 int BI_RGB ;
 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 void* read16 (unsigned char const*) ;
 int read32 (unsigned char const*) ;

__attribute__((used)) static const unsigned char *
bmp_read_bitmap_core_header(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 int size;

 size = read32(p + 0);
 if (size != 12)
  fz_throw(ctx, FZ_ERROR_GENERIC, "unsupported core header size in bmp image");

 if (size >= 12)
 {
  if (end - p < 12)
   fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in bitmap core header in bmp image");

  info->width = read16(p + 4);
  info->height = read16(p + 6);
  info->bitcount = read16(p + 10);
 }

 info->xres = 2835;
 info->yres = 2835;
 info->compression = BI_RGB;
 info->palettetype = 0;

 return p + size;
}
