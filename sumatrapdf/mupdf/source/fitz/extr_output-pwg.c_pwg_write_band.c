
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int n; int * out; } ;
struct TYPE_4__ {TYPE_1__ super; } ;
typedef TYPE_2__ pwg_band_writer ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;


 int assert (int) ;
 int fz_write_byte (int *,int *,int) ;
 int fz_write_data (int *,int *,unsigned char const*,int) ;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,int) ;

__attribute__((used)) static void
pwg_write_band(fz_context *ctx, fz_band_writer *writer_, int stride, int band_start, int band_height, const unsigned char *samples)
{
 pwg_band_writer *writer = (pwg_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int h = writer->super.h;
 const unsigned char *sp = samples;
 int n = writer->super.n;
 int ss = w * n;
 int y, x;


 y = 0;
 while (y < h)
 {
  int yrep;

  assert(sp == samples + y * stride);


  for (yrep = 1; yrep < 256 && y+yrep < h; yrep++)
  {
   if (memcmp(sp, sp + yrep * stride, ss) != 0)
    break;
  }
  fz_write_byte(ctx, out, yrep-1);


  x = 0;
  while (x < w)
  {
   int d;

   assert(sp == samples + y * stride + x * n);


   for (d = 1; d < 128 && x+d < w; d++)
   {
    if (memcmp(sp + (d-1)*n, sp + d*n, n) == 0)
     break;
   }
   if (d == 1)
   {
    int xrep;




    for (xrep = 1; xrep < 128 && x+xrep < w; xrep++)
    {
     if (memcmp(sp, sp + xrep*n, n) != 0)
      break;
    }
    fz_write_byte(ctx, out, xrep-1);
    fz_write_data(ctx, out, sp, n);
    sp += n*xrep;
    x += xrep;
   }
   else
   {
    fz_write_byte(ctx, out, 257-d);
    x += d;
    while (d > 0)
    {
     fz_write_data(ctx, out, sp, n);
     sp += n;
     d--;
    }
   }
  }


  sp += stride*(yrep-1);
  y += yrep;
 }
}
