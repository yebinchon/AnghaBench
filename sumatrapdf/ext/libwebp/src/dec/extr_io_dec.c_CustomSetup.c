
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int * emit_alpha; int * emit; int * tmp_u; int * tmp_v; int * tmp_y; int * memory; int options; int * emit_alpha_row; TYPE_1__* output; } ;
typedef TYPE_2__ WebPDecParams ;
typedef scalar_t__ WEBP_CSP_MODE ;
struct TYPE_12__ {int mb_w; scalar_t__ fancy_upsampling; scalar_t__ use_scaling; scalar_t__ opaque; } ;
typedef TYPE_3__ VP8Io ;
struct TYPE_10__ {scalar_t__ colorspace; } ;


 int * EmitAlphaRGB ;
 int * EmitAlphaRGBA4444 ;
 int * EmitAlphaYUV ;
 int * EmitFancyRGB ;
 int * EmitSampledRGB ;
 int * EmitYUV ;
 int InitRGBRescaler (TYPE_3__*,TYPE_2__* const) ;
 int InitYUVRescaler (TYPE_3__*,TYPE_2__* const) ;
 scalar_t__ const MODE_RGBA_4444 ;
 int MODE_YUV ;
 int MODE_YUVA ;
 scalar_t__ const MODE_rgbA_4444 ;
 int WebPInitAlphaProcessing () ;
 int WebPInitSamplers () ;
 int WebPInitUpsamplers () ;
 int WebPIoInitFromOptions (int ,TYPE_3__*,int ) ;
 int WebPIsAlphaMode (scalar_t__ const) ;
 scalar_t__ WebPIsPremultipliedMode (scalar_t__ const) ;
 int WebPIsRGBMode (scalar_t__ const) ;
 int * WebPSafeMalloc (unsigned long long,size_t) ;

__attribute__((used)) static int CustomSetup(VP8Io* io) {
  WebPDecParams* const p = (WebPDecParams*)io->opaque;
  const WEBP_CSP_MODE colorspace = p->output->colorspace;
  const int is_rgb = WebPIsRGBMode(colorspace);
  const int is_alpha = WebPIsAlphaMode(colorspace);

  p->memory = ((void*)0);
  p->emit = ((void*)0);
  p->emit_alpha = ((void*)0);
  p->emit_alpha_row = ((void*)0);
  if (!WebPIoInitFromOptions(p->options, io, is_alpha ? MODE_YUV : MODE_YUVA)) {
    return 0;
  }
  if (is_alpha && WebPIsPremultipliedMode(colorspace)) {
    WebPInitUpsamplers();
  }
  if (io->use_scaling) {

    const int ok = is_rgb ? InitRGBRescaler(io, p) : InitYUVRescaler(io, p);
    if (!ok) {
      return 0;
    }



  } else {
    if (is_rgb) {
      WebPInitSamplers();
      p->emit = EmitSampledRGB;
      if (io->fancy_upsampling) {
      }
    } else {
      p->emit = EmitYUV;
    }
    if (is_alpha) {
      p->emit_alpha =
          (colorspace == MODE_RGBA_4444 || colorspace == MODE_rgbA_4444) ?
              EmitAlphaRGBA4444
          : is_rgb ? EmitAlphaRGB
          : EmitAlphaYUV;
      if (is_rgb) {
        WebPInitAlphaProcessing();
      }
    }
  }

  return 1;
}
