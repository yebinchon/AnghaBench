
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int WebPRescaler ;
struct TYPE_7__ {int * const scaler_v; int * const scaler_u; TYPE_1__* output; int * scaler_y; } ;
typedef TYPE_2__ WebPDecParams ;
struct TYPE_8__ {int mb_h; int uv_stride; scalar_t__ v; scalar_t__ u; int y_stride; scalar_t__ y; int mb_w; int width; int * a; } ;
typedef TYPE_3__ VP8Io ;
struct TYPE_6__ {int colorspace; } ;


 int Rescale (scalar_t__,int ,int const,int * const) ;
 scalar_t__ WebPIsAlphaMode (int ) ;
 int WebPMultRows (int *,int ,int *,int ,int ,int const,int ) ;

__attribute__((used)) static int EmitRescaledYUV(const VP8Io* const io, WebPDecParams* const p) {
  const int mb_h = io->mb_h;
  const int uv_mb_h = (mb_h + 1) >> 1;
  WebPRescaler* const scaler = p->scaler_y;
  int num_lines_out = 0;
  if (WebPIsAlphaMode(p->output->colorspace) && io->a != ((void*)0)) {




    WebPMultRows((uint8_t*)io->y, io->y_stride,
                 io->a, io->width, io->mb_w, mb_h, 0);
  }
  num_lines_out = Rescale(io->y, io->y_stride, mb_h, scaler);
  Rescale(io->u, io->uv_stride, uv_mb_h, p->scaler_u);
  Rescale(io->v, io->uv_stride, uv_mb_h, p->scaler_v);
  return num_lines_out;
}
