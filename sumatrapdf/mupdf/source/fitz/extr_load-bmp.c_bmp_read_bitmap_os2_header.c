
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int compression; int palettetype; void* colors; void* yres; void* xres; int bitcount; void* height; void* width; } ;
typedef int fz_context ;


 int BI_RGB ;
 int BI_RLE24 ;
 int BI_UNSUPPORTED ;
 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int read16 (unsigned char const*) ;
 void* read32 (unsigned char const*) ;

__attribute__((used)) static const unsigned char *
bmp_read_bitmap_os2_header(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 int size;

 size = read32(p + 0);
 if (size != 16 && size != 64)
  fz_throw(ctx, FZ_ERROR_GENERIC, "unsupported os2 header size in bmp image");

 if (size >= 16)
 {
  if (end - p < 16)
   fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in bitmap os2 header in bmp image");

  info->width = read32(p + 4);
  info->height = read32(p + 8);
  info->bitcount = read16(p + 14);

  info->compression = BI_RGB;
 }
 if (size >= 64)
 {
  if (end - p < 64)
   fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in bitmap os2 header in bmp image");

  info->compression = read32(p + 16);
  info->xres = read32(p + 24);
  info->yres = read32(p + 28);
  info->colors = read32(p + 32);


  if (info->compression < 0)
   info->compression = BI_UNSUPPORTED;
  else if (info->compression == 4)
   info->compression = BI_RLE24;
 }

 info->palettetype = 1;

 return p + size;
}
