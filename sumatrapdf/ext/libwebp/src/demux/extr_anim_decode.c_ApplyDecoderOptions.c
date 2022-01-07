
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int use_threads; } ;
struct TYPE_9__ {int is_external_memory; scalar_t__ colorspace; } ;
struct TYPE_11__ {TYPE_2__ options; TYPE_1__ output; } ;
typedef TYPE_3__ WebPDecoderConfig ;
struct TYPE_12__ {scalar_t__ color_mode; int use_threads; } ;
typedef TYPE_4__ WebPAnimDecoderOptions ;
struct TYPE_13__ {int * blend_func_; TYPE_3__ config_; } ;
typedef TYPE_5__ WebPAnimDecoder ;
typedef scalar_t__ WEBP_CSP_MODE ;


 int BlendPixelRowNonPremult ;
 int BlendPixelRowPremult ;
 scalar_t__ MODE_BGRA ;
 scalar_t__ MODE_RGBA ;
 scalar_t__ MODE_bgrA ;
 scalar_t__ MODE_rgbA ;
 int WebPInitDecoderConfig (TYPE_3__*) ;
 int assert (int ) ;

__attribute__((used)) static int ApplyDecoderOptions(const WebPAnimDecoderOptions* const dec_options,
                               WebPAnimDecoder* const dec) {
  WEBP_CSP_MODE mode;
  WebPDecoderConfig* config = &dec->config_;
  assert(dec_options != ((void*)0));

  mode = dec_options->color_mode;
  if (mode != MODE_RGBA && mode != MODE_BGRA &&
      mode != MODE_rgbA && mode != MODE_bgrA) {
    return 0;
  }
  dec->blend_func_ = (mode == MODE_RGBA || mode == MODE_BGRA)
                         ? &BlendPixelRowNonPremult
                         : &BlendPixelRowPremult;
  WebPInitDecoderConfig(config);
  config->output.colorspace = mode;
  config->output.is_external_memory = 1;
  config->options.use_threads = dec_options->use_threads;

  return 1;
}
