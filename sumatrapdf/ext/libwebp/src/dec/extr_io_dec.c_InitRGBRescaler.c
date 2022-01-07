
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int rescaler_t ;
typedef int WebPRescaler ;
struct TYPE_7__ {int emit_alpha_row; TYPE_1__* output; int emit_alpha; int * scaler_a; int emit; int * scaler_v; int * scaler_u; int * scaler_y; int * memory; } ;
typedef TYPE_2__ WebPDecParams ;
struct TYPE_8__ {int scaled_width; int scaled_height; int mb_w; int mb_h; } ;
typedef TYPE_3__ VP8Io ;
struct TYPE_6__ {scalar_t__ colorspace; } ;


 int EmitRescaledAlphaRGB ;
 int EmitRescaledRGB ;
 int ExportAlpha ;
 int ExportAlphaRGBA4444 ;
 scalar_t__ MODE_RGBA_4444 ;
 scalar_t__ MODE_rgbA_4444 ;
 scalar_t__ WEBP_ALIGN (int const*) ;
 int const WEBP_ALIGN_CST ;
 int WebPInitAlphaProcessing () ;
 int WebPInitYUV444Converters () ;
 int WebPIsAlphaMode (scalar_t__) ;
 int WebPRescalerInit (int *,int const,int const,int *,int const,int const,int ,int,int *) ;
 int * WebPSafeMalloc (unsigned long long,size_t) ;

__attribute__((used)) static int InitRGBRescaler(const VP8Io* const io, WebPDecParams* const p) {
  const int has_alpha = WebPIsAlphaMode(p->output->colorspace);
  const int out_width = io->scaled_width;
  const int out_height = io->scaled_height;
  const int uv_in_width = (io->mb_w + 1) >> 1;
  const int uv_in_height = (io->mb_h + 1) >> 1;
  const size_t work_size = 2 * out_width;
  rescaler_t* work;
  uint8_t* tmp;
  size_t tmp_size1, tmp_size2, total_size, rescaler_size;
  WebPRescaler* scalers;
  const int num_rescalers = has_alpha ? 4 : 3;

  tmp_size1 = 3 * work_size;
  tmp_size2 = 3 * out_width;
  if (has_alpha) {
    tmp_size1 += work_size;
    tmp_size2 += out_width;
  }
  total_size = tmp_size1 * sizeof(*work) + tmp_size2 * sizeof(*tmp);
  rescaler_size = num_rescalers * sizeof(*p->scaler_y) + WEBP_ALIGN_CST;

  p->memory = WebPSafeMalloc(1ULL, total_size + rescaler_size);
  if (p->memory == ((void*)0)) {
    return 0;
  }
  work = (rescaler_t*)p->memory;
  tmp = (uint8_t*)(work + tmp_size1);

  scalers = (WebPRescaler*)WEBP_ALIGN((const uint8_t*)work + total_size);
  p->scaler_y = &scalers[0];
  p->scaler_u = &scalers[1];
  p->scaler_v = &scalers[2];
  p->scaler_a = has_alpha ? &scalers[3] : ((void*)0);

  WebPRescalerInit(p->scaler_y, io->mb_w, io->mb_h,
                   tmp + 0 * out_width, out_width, out_height, 0, 1,
                   work + 0 * work_size);
  WebPRescalerInit(p->scaler_u, uv_in_width, uv_in_height,
                   tmp + 1 * out_width, out_width, out_height, 0, 1,
                   work + 1 * work_size);
  WebPRescalerInit(p->scaler_v, uv_in_width, uv_in_height,
                   tmp + 2 * out_width, out_width, out_height, 0, 1,
                   work + 2 * work_size);
  p->emit = EmitRescaledRGB;
  WebPInitYUV444Converters();

  if (has_alpha) {
    WebPRescalerInit(p->scaler_a, io->mb_w, io->mb_h,
                     tmp + 3 * out_width, out_width, out_height, 0, 1,
                     work + 3 * work_size);
    p->emit_alpha = EmitRescaledAlphaRGB;
    if (p->output->colorspace == MODE_RGBA_4444 ||
        p->output->colorspace == MODE_rgbA_4444) {
      p->emit_alpha_row = ExportAlphaRGBA4444;
    } else {
      p->emit_alpha_row = ExportAlpha;
    }
    WebPInitAlphaProcessing();
  }
  return 1;
}
