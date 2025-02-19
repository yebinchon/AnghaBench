
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int width; int height; unsigned char depth; unsigned char interlace; int indexed; int n; void* type; } ;
typedef int fz_context ;


 void* FZ_COLORSPACE_GRAY ;
 void* FZ_COLORSPACE_RGB ;
 int FZ_ERROR_GENERIC ;
 int UINT_MAX ;
 int fz_throw (int *,int ,char*) ;
 void* getuint (unsigned char const*) ;

__attribute__((used)) static void
png_read_ihdr(fz_context *ctx, struct info *info, const unsigned char *p, unsigned int size)
{
 int color, compression, filter;

 if (size != 13)
  fz_throw(ctx, FZ_ERROR_GENERIC, "IHDR chunk is the wrong size");

 info->width = getuint(p + 0);
 info->height = getuint(p + 4);
 info->depth = p[8];

 color = p[9];
 compression = p[10];
 filter = p[11];
 info->interlace = p[12];

 if (info->width <= 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "image width must be > 0");
 if (info->height <= 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "image height must be > 0");

 if (info->depth != 1 && info->depth != 2 && info->depth != 4 &&
   info->depth != 8 && info->depth != 16)
  fz_throw(ctx, FZ_ERROR_GENERIC, "image bit depth must be one of 1, 2, 4, 8, 16");
 if (color == 2 && info->depth < 8)
  fz_throw(ctx, FZ_ERROR_GENERIC, "illegal bit depth for truecolor");
 if (color == 3 && info->depth > 8)
  fz_throw(ctx, FZ_ERROR_GENERIC, "illegal bit depth for indexed");
 if (color == 4 && info->depth < 8)
  fz_throw(ctx, FZ_ERROR_GENERIC, "illegal bit depth for grayscale with alpha");
 if (color == 6 && info->depth < 8)
  fz_throw(ctx, FZ_ERROR_GENERIC, "illegal bit depth for truecolor with alpha");

 info->indexed = 0;
 if (color == 0)
  info->n = 1, info->type = FZ_COLORSPACE_GRAY;
 else if (color == 2)
  info->n = 3, info->type = FZ_COLORSPACE_RGB;
 else if (color == 4)
  info->n = 2, info->type = FZ_COLORSPACE_GRAY;
 else if (color == 6)
  info->n = 4, info->type = FZ_COLORSPACE_RGB;
 else if (color == 3)
 {
  info->type = FZ_COLORSPACE_RGB;
  info->indexed = 1;
  info->n = 1;
 }
 else
  fz_throw(ctx, FZ_ERROR_GENERIC, "unknown color type");

 if (compression != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "unknown compression method");
 if (filter != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "unknown filter method");
 if (info->interlace != 0 && info->interlace != 1)
  fz_throw(ctx, FZ_ERROR_GENERIC, "interlace method not supported");
 if (info->height > UINT_MAX / info->width / info->n / (info->depth / 8 + 1))
  fz_throw(ctx, FZ_ERROR_GENERIC, "image dimensions might overflow");
}
