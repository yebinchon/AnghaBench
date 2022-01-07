
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int strip_height; } ;
struct TYPE_5__ {int w; int h; int n; int * out; } ;
struct TYPE_7__ {scalar_t__ stripbuf; TYPE_2__ options; TYPE_1__ super; } ;
typedef TYPE_3__ pclm_band_writer ;
typedef int fz_output ;
typedef int fz_context ;
typedef int fz_band_writer ;


 int flush_strip (int *,TYPE_3__*,int) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;

__attribute__((used)) static void
pclm_write_band(fz_context *ctx, fz_band_writer *writer_, int stride, int band_start, int band_height, const unsigned char *sp)
{
 pclm_band_writer *writer = (pclm_band_writer *)writer_;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int h = writer->super.h;
 int n = writer->super.n;
 int sh = writer->options.strip_height;
 int line;

 if (!out)
  return;

 for (line = 0; line < band_height; line++)
 {
  int dstline = (band_start+line) % sh;
  memcpy(writer->stripbuf + w*n*dstline, sp + line * w*n, w*n);
  if (dstline+1 == sh)
   flush_strip(ctx, writer, dstline+1);
 }

 if (band_start + band_height == h && h % sh != 0)
  flush_strip(ctx, writer, h % sh);
}
