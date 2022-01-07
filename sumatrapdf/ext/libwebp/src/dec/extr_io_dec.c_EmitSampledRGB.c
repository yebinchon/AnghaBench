
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int stride; int * rgba; } ;
typedef TYPE_2__ WebPRGBABuffer ;
struct TYPE_10__ {TYPE_4__* output; } ;
typedef TYPE_3__ WebPDecParams ;
struct TYPE_8__ {TYPE_2__ RGBA; } ;
struct TYPE_11__ {size_t colorspace; TYPE_1__ u; } ;
typedef TYPE_4__ WebPDecBuffer ;
struct TYPE_12__ {int mb_y; int mb_h; int mb_w; int uv_stride; int v; int u; int y_stride; int y; } ;
typedef TYPE_5__ VP8Io ;


 int WebPSamplerProcessPlane (int ,int ,int ,int ,int ,int * const,int,int ,int,int ) ;
 int * WebPSamplers ;

__attribute__((used)) static int EmitSampledRGB(const VP8Io* const io, WebPDecParams* const p) {
  WebPDecBuffer* const output = p->output;
  WebPRGBABuffer* const buf = &output->u.RGBA;
  uint8_t* const dst = buf->rgba + io->mb_y * buf->stride;
  WebPSamplerProcessPlane(io->y, io->y_stride,
                          io->u, io->v, io->uv_stride,
                          dst, buf->stride, io->mb_w, io->mb_h,
                          WebPSamplers[output->colorspace]);
  return io->mb_h;
}
