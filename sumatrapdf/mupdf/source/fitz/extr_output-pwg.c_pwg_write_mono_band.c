
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int * out; } ;
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
pwg_write_mono_band(fz_context *ctx, fz_band_writer *writer_, int stride, int band_start, int band_height, const unsigned char *samples)
{
 pwg_band_writer *writer = (pwg_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int h = writer->super.h;
 const unsigned char *sp;
 int y, x;
 int byte_width;


 sp = samples;
 byte_width = (w+7)/8;
 y = 0;
 while (y < band_height)
 {
  int yrep;

  assert(sp == samples + y * stride);


  for (yrep = 1; yrep < 256 && y+yrep < h; yrep++)
  {
   if (memcmp(sp, sp + yrep * stride, byte_width) != 0)
    break;
  }
  fz_write_byte(ctx, out, yrep-1);


  x = 0;
  while (x < byte_width)
  {
   int d;

   assert(sp == samples + y * stride + x);


   for (d = 1; d < 128 && x+d < byte_width; d++)
   {
    if (sp[d-1] == sp[d])
     break;
   }
   if (d == 1)
   {
    int xrep;




    for (xrep = 1; xrep < 128 && x+xrep < byte_width; xrep++)
    {
     if (sp[0] != sp[xrep])
      break;
    }
    fz_write_byte(ctx, out, xrep-1);
    fz_write_data(ctx, out, sp, 1);
    sp += xrep;
    x += xrep;
   }
   else
   {
    fz_write_byte(ctx, out, 257-d);
    fz_write_data(ctx, out, sp, d);
    sp += d;
    x += d;
   }
  }


  sp += stride*yrep - byte_width;
  y += yrep;
 }
}
