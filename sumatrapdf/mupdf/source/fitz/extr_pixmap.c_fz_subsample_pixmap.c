
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stride; int w; int n; unsigned char* samples; int h; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int FZ_ERROR_MEMORY ;
 int INT_MAX ;
 int assert (int) ;
 unsigned char* fz_realloc (int *,unsigned char*,int) ;
 int fz_subsample_pixmap_ARM (unsigned char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int fz_throw (int *,int ,char*) ;

void
fz_subsample_pixmap(fz_context *ctx, fz_pixmap *tile, int factor)
{
 int dst_w, dst_h, w, h, fwd, fwd2, fwd3, back, back2, n, f;
 unsigned char *s, *d;

 int x, y, xx, yy, nn;


 if (!tile)
  return;

 assert(tile->stride >= tile->w * tile->n);

 s = d = tile->samples;
 f = 1<<factor;
 w = tile->w;
 h = tile->h;
 n = tile->n;
 dst_w = (w + f-1)>>factor;
 dst_h = (h + f-1)>>factor;
 fwd = tile->stride;
 back = f*fwd-n;
 back2 = f*n-1;
 fwd2 = (f-1)*n;
 fwd3 = (f-1)*fwd + tile->stride - w * n;
 factor *= 2;
 for (y = h - f; y >= 0; y -= f)
 {
  for (x = w - f; x >= 0; x -= f)
  {
   for (nn = n; nn > 0; nn--)
   {
    int v = 0;
    for (xx = f; xx > 0; xx--)
    {
     for (yy = f; yy > 0; yy--)
     {
      v += *s;
      s += fwd;
     }
     s -= back;
    }
    *d++ = v >> factor;
    s -= back2;
   }
   s += fwd2;
  }

  x += f;
  if (x > 0)
  {
   int div = x * f;
   int fwd4 = (x-1) * n;
   int back4 = x*n-1;
   for (nn = n; nn > 0; nn--)
   {
    int v = 0;
    for (xx = x; xx > 0; xx--)
    {
     for (yy = f; yy > 0; yy--)
     {
      v += *s;
      s += fwd;
     }
     s -= back;
    }
    *d++ = v / div;
    s -= back4;
   }
   s += fwd4;
  }
  s += fwd3;
 }

 y += f;
 if (y > 0)
 {
  int div = y * f;
  int back5 = fwd * y - n;
  for (x = w - f; x >= 0; x -= f)
  {
   for (nn = n; nn > 0; nn--)
   {
    int v = 0;
    for (xx = f; xx > 0; xx--)
    {
     for (yy = y; yy > 0; yy--)
     {
      v += *s;
      s += fwd;
     }
     s -= back5;
    }
    *d++ = v / div;
    s -= back2;
   }
   s += fwd2;
  }

  x += f;
  if (x > 0)
  {
   int back4 = x * n - 1;
   div = x * y;
   for (nn = n; nn > 0; nn--)
   {
    int v = 0;
    for (xx = x; xx > 0; xx--)
    {
     for (yy = y; yy > 0; yy--)
     {
      v += *s;
      s += fwd;
     }
     s -= back5;
    }
    *d++ = v / div;
    s -= back4;
   }
  }
 }

 tile->w = dst_w;
 tile->h = dst_h;
 tile->stride = dst_w * n;
 if (dst_h > INT_MAX / (dst_w * n))
  fz_throw(ctx, FZ_ERROR_MEMORY, "pixmap too large");
 tile->samples = fz_realloc(ctx, tile->samples, dst_h * dst_w * n);
}
