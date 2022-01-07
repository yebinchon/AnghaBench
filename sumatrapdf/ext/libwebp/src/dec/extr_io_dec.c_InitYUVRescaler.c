
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
typedef int rescaler_t ;
struct TYPE_10__ {int a_stride; int a; int v_stride; int v; int u_stride; int u; int y_stride; int y; } ;
typedef TYPE_3__ WebPYUVABuffer ;
typedef int WebPRescaler ;
struct TYPE_11__ {int emit_alpha; int * scaler_a; int emit; int * scaler_v; int * scaler_u; int * scaler_y; int * memory; TYPE_2__* output; } ;
typedef TYPE_4__ WebPDecParams ;
struct TYPE_12__ {int scaled_width; int scaled_height; int mb_w; int mb_h; } ;
typedef TYPE_5__ VP8Io ;
struct TYPE_8__ {TYPE_3__ YUVA; } ;
struct TYPE_9__ {TYPE_1__ u; int colorspace; } ;


 int EmitRescaledAlphaYUV ;
 int EmitRescaledYUV ;
 scalar_t__ WEBP_ALIGN (int const*) ;
 int const WEBP_ALIGN_CST ;
 int WebPInitAlphaProcessing () ;
 int WebPIsAlphaMode (int ) ;
 int WebPRescalerInit (int *,int const,int const,int ,int const,int const,int ,int,int *) ;
 int * WebPSafeMalloc (unsigned long long,size_t) ;

__attribute__((used)) static int InitYUVRescaler(const VP8Io* const io, WebPDecParams* const p) {
  const int has_alpha = WebPIsAlphaMode(p->output->colorspace);
  const WebPYUVABuffer* const buf = &p->output->u.YUVA;
  const int out_width = io->scaled_width;
  const int out_height = io->scaled_height;
  const int uv_out_width = (out_width + 1) >> 1;
  const int uv_out_height = (out_height + 1) >> 1;
  const int uv_in_width = (io->mb_w + 1) >> 1;
  const int uv_in_height = (io->mb_h + 1) >> 1;
  const size_t work_size = 2 * out_width;
  const size_t uv_work_size = 2 * uv_out_width;
  size_t tmp_size, rescaler_size;
  rescaler_t* work;
  WebPRescaler* scalers;
  const int num_rescalers = has_alpha ? 4 : 3;

  tmp_size = (work_size + 2 * uv_work_size) * sizeof(*work);
  if (has_alpha) {
    tmp_size += work_size * sizeof(*work);
  }
  rescaler_size = num_rescalers * sizeof(*p->scaler_y) + WEBP_ALIGN_CST;

  p->memory = WebPSafeMalloc(1ULL, tmp_size + rescaler_size);
  if (p->memory == ((void*)0)) {
    return 0;
  }
  work = (rescaler_t*)p->memory;

  scalers = (WebPRescaler*)WEBP_ALIGN((const uint8_t*)work + tmp_size);
  p->scaler_y = &scalers[0];
  p->scaler_u = &scalers[1];
  p->scaler_v = &scalers[2];
  p->scaler_a = has_alpha ? &scalers[3] : ((void*)0);

  WebPRescalerInit(p->scaler_y, io->mb_w, io->mb_h,
                   buf->y, out_width, out_height, buf->y_stride, 1,
                   work);
  WebPRescalerInit(p->scaler_u, uv_in_width, uv_in_height,
                   buf->u, uv_out_width, uv_out_height, buf->u_stride, 1,
                   work + work_size);
  WebPRescalerInit(p->scaler_v, uv_in_width, uv_in_height,
                   buf->v, uv_out_width, uv_out_height, buf->v_stride, 1,
                   work + work_size + uv_work_size);
  p->emit = EmitRescaledYUV;

  if (has_alpha) {
    WebPRescalerInit(p->scaler_a, io->mb_w, io->mb_h,
                     buf->a, out_width, out_height, buf->a_stride, 1,
                     work + work_size + 2 * uv_work_size);
    p->emit_alpha = EmitRescaledAlphaYUV;
    WebPInitAlphaProcessing();
  }
  return 1;
}
