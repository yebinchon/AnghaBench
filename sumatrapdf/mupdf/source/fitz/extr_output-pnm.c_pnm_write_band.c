
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_output ;
typedef int fz_context ;
struct TYPE_3__ {int w; int h; int n; int * out; } ;
typedef TYPE_1__ fz_band_writer ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int fz_write_data (int *,int *,unsigned char const*,int) ;

__attribute__((used)) static void
pnm_write_band(fz_context *ctx, fz_band_writer *writer, int stride, int band_start, int band_height, const unsigned char *p)
{
 fz_output *out = writer->out;
 int w = writer->w;
 int h = writer->h;
 int n = writer->n;
 int len;
 int end = band_start + band_height;

 if (n != 1 && n != 3)
  fz_throw(ctx, FZ_ERROR_GENERIC, "pixmap must be grayscale or rgb to write as pnm");

 if (!out)
  return;

 if (end > h)
  end = h;
 end -= band_start;





 while (end--)
 {
  len = w;
  while (len)
  {
   int num_written = len;

   switch (n)
   {
   case 1:

    fz_write_data(ctx, out, p, num_written);
    p += num_written;
    break;
   case 3:
    fz_write_data(ctx, out, p, num_written*3);
    p += num_written*3;
    break;
   }
   len -= num_written;
  }
  p += stride - w*n;
 }
}
