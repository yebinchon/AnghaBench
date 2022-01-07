
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
typedef int uint32_t ;
struct TYPE_10__ {int* rgba; int stride; } ;
typedef TYPE_3__ WebPRGBABuffer ;
struct TYPE_11__ {TYPE_5__* scaler_a; TYPE_2__* output; } ;
typedef TYPE_4__ WebPDecParams ;
typedef int WEBP_CSP_MODE ;
struct TYPE_12__ {int dst_width; int* dst; } ;
struct TYPE_8__ {TYPE_3__ RGBA; } ;
struct TYPE_9__ {int height; int colorspace; TYPE_1__ u; } ;


 int WebPApplyAlphaMultiply4444 (int* const,int const,int,int) ;
 int WebPIsPremultipliedMode (int const) ;
 int WebPRescalerExportRow (TYPE_5__*) ;
 scalar_t__ WebPRescalerHasPendingOutput (TYPE_5__*) ;
 int assert (int) ;

__attribute__((used)) static int ExportAlphaRGBA4444(WebPDecParams* const p, int y_pos,
                               int max_lines_out) {
  const WebPRGBABuffer* const buf = &p->output->u.RGBA;
  uint8_t* const base_rgba = buf->rgba + y_pos * buf->stride;



  uint8_t* alpha_dst = base_rgba + 1;

  int num_lines_out = 0;
  const WEBP_CSP_MODE colorspace = p->output->colorspace;
  const int width = p->scaler_a->dst_width;
  const int is_premult_alpha = WebPIsPremultipliedMode(colorspace);
  uint32_t alpha_mask = 0x0f;

  while (WebPRescalerHasPendingOutput(p->scaler_a) &&
         num_lines_out < max_lines_out) {
    int i;
    assert(y_pos + num_lines_out < p->output->height);
    WebPRescalerExportRow(p->scaler_a);
    for (i = 0; i < width; ++i) {

      const uint32_t alpha_value = p->scaler_a->dst[i] >> 4;
      alpha_dst[2 * i] = (alpha_dst[2 * i] & 0xf0) | alpha_value;
      alpha_mask &= alpha_value;
    }
    alpha_dst += buf->stride;
    ++num_lines_out;
  }
  if (is_premult_alpha && alpha_mask != 0x0f) {
    WebPApplyAlphaMultiply4444(base_rgba, width, num_lines_out, buf->stride);
  }
  return num_lines_out;
}
