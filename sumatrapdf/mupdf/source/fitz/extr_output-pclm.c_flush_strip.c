
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ compress; } ;
struct TYPE_6__ {int w; int n; int * out; } ;
struct TYPE_8__ {unsigned char* stripbuf; size_t complen; unsigned char* compbuf; TYPE_2__ options; TYPE_1__ super; } ;
typedef TYPE_3__ pclm_band_writer ;
typedef int fz_output ;
typedef int fz_context ;


 int FZ_DEFLATE_DEFAULT ;
 int fz_deflate (int *,unsigned char*,size_t*,unsigned char*,size_t,int ) ;
 int fz_write_data (int *,int *,unsigned char*,size_t) ;
 int fz_write_printf (int *,int *,char*,size_t,...) ;
 int fz_write_string (int *,int *,char*) ;
 int new_obj (int *,TYPE_3__*) ;

__attribute__((used)) static void
flush_strip(fz_context *ctx, pclm_band_writer *writer, int fill)
{
 unsigned char *data = writer->stripbuf;
 fz_output *out = writer->super.out;
 int w = writer->super.w;
 int n = writer->super.n;
 size_t len = w*n*fill;


 if (writer->options.compress)
 {
  size_t destLen = writer->complen;
  fz_deflate(ctx, writer->compbuf, &destLen, data, len, FZ_DEFLATE_DEFAULT);
  len = destLen;
  data = writer->compbuf;
 }
 fz_write_printf(ctx, out, "%d 0 obj\n<<\n/Width %d\n/ColorSpace /Device%s\n/Height %d\n%s/Subtype /Image\n",
  new_obj(ctx, writer), w, n == 1 ? "Gray" : "RGB", fill, writer->options.compress ? "/Filter /FlateDecode\n" : "");
 fz_write_printf(ctx, out, "/Length %zd\n/Type /XObject\n/BitsPerComponent 8\n>>\nstream\n", len);
 fz_write_data(ctx, out, data, len);
 fz_write_string(ctx, out, "\nendstream\nendobj\n");
}
