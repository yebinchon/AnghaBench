
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int width; int height; int bitcount; int compression; } ;
typedef int fz_context ;


 int BI_RGB ;
 unsigned char* fz_calloc (int *,int,int) ;
 int fz_warn (int *,char*) ;

__attribute__((used)) static unsigned char *
bmp_decompress_rle8(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char **end)
{
 const unsigned char *sp;
 unsigned char *dp, *ep, *decompressed;
 int width = info->width;
 int height = info->height;
 int stride;
 int x, i;

 stride = (width + 3) / 4 * 4;

 sp = p;
 dp = decompressed = fz_calloc(ctx, height, stride);
 ep = dp + height * stride;
 x = 0;

 while (sp + 2 <= *end)
 {
  if (sp[0] == 0 && sp[1] == 0)
  {
   if (x < stride)
    dp += stride - x;
   sp += 2;
   x = 0;
  }
  else if (sp[0] == 0 && sp[1] == 1)
  {
   dp = ep;
   break;
  }
  else if (sp[0] == 0 && sp[1] == 2)
  {
   int deltax, deltay;
   if (sp + 4 > *end)
    break;
   deltax = sp[2];
   deltay = sp[3];
   dp += deltax + deltay * stride;
   sp += 4;
   x += deltax;
  }
  else if (sp[0] == 0 && sp[1] >= 3)
  {
   int n = sp[1];
   int nn = (n + 1) / 2 * 2;
   if (sp + 2 + nn > *end)
    break;
   if (dp + n > ep) {
    fz_warn(ctx, "buffer overflow in bitmap data in bmp image");
    break;
   }
   sp += 2;
   for (i = 0; i < n; i++)
    dp[i] = sp[i];
   dp += n;
   sp += (n + 1) / 2 * 2;
   x += n;
  }
  else
  {
   int n = sp[0];
   if (dp + n > ep) {
    fz_warn(ctx, "buffer overflow in bitmap data in bmp image");
    break;
   }
   for (i = 0; i < n; i++)
    dp[i] = sp[1];
   dp += n;
   sp += 2;
   x += n;
  }
 }

 if (dp < ep)
  fz_warn(ctx, "premature end of bitmap data in bmp image");

 info->compression = BI_RGB;
 info->bitcount = 8;
 *end = ep;
 return decompressed;
}
