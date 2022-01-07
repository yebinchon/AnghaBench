
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int a_stride; int y_stride; int * a; int * y; } ;
typedef TYPE_3__ WebPYUVABuffer ;
struct TYPE_12__ {int last_y; TYPE_6__* scaler_a; TYPE_2__* output; } ;
typedef TYPE_4__ WebPDecParams ;
struct TYPE_13__ {int scaled_height; int scaled_width; int mb_h; int width; int * a; } ;
typedef TYPE_5__ VP8Io ;
struct TYPE_14__ {int dst_width; } ;
struct TYPE_9__ {TYPE_3__ YUVA; } ;
struct TYPE_10__ {TYPE_1__ u; } ;


 int FillAlphaPlane (int * const,int ,int,int) ;
 int Rescale (int *,int ,int ,TYPE_6__*) ;
 int WebPMultRows (int * const,int,int * const,int,int ,int const,int) ;
 int assert (int) ;

__attribute__((used)) static int EmitRescaledAlphaYUV(const VP8Io* const io, WebPDecParams* const p,
                                int expected_num_lines_out) {
  const WebPYUVABuffer* const buf = &p->output->u.YUVA;
  uint8_t* const dst_a = buf->a + p->last_y * buf->a_stride;
  if (io->a != ((void*)0)) {
    uint8_t* const dst_y = buf->y + p->last_y * buf->y_stride;
    const int num_lines_out = Rescale(io->a, io->width, io->mb_h, p->scaler_a);
    assert(expected_num_lines_out == num_lines_out);
    if (num_lines_out > 0) {
      WebPMultRows(dst_y, buf->y_stride, dst_a, buf->a_stride,
                   p->scaler_a->dst_width, num_lines_out, 1);
    }
  } else if (buf->a != ((void*)0)) {

    assert(p->last_y + expected_num_lines_out <= io->scaled_height);
    FillAlphaPlane(dst_a, io->scaled_width, expected_num_lines_out,
                   buf->a_stride);
  }
  return 0;
}
