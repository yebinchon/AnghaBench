
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WebPPreset ;
struct TYPE_4__ {float quality; int target_PSNR; int method; int sns_strength; int filter_strength; int filter_sharpness; int filter_type; int segments; int pass; int preprocessing; int alpha_compression; int alpha_filtering; int alpha_quality; int near_lossless; scalar_t__ use_sharp_yuv; scalar_t__ use_delta_palette; scalar_t__ low_memory; scalar_t__ thread_level; scalar_t__ emulate_jpeg_size; int image_hint; scalar_t__ exact; scalar_t__ lossless; scalar_t__ partition_limit; scalar_t__ autofilter; scalar_t__ show_compressed; scalar_t__ partitions; scalar_t__ target_size; } ;
typedef TYPE_1__ WebPConfig ;


 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_ENCODER_ABI_VERSION ;
 int WEBP_HINT_DEFAULT ;






 int WebPValidateConfig (TYPE_1__*) ;

int WebPConfigInitInternal(WebPConfig* config,
                           WebPPreset preset, float quality, int version) {
  if (WEBP_ABI_IS_INCOMPATIBLE(version, WEBP_ENCODER_ABI_VERSION)) {
    return 0;
  }
  if (config == ((void*)0)) return 0;

  config->quality = quality;
  config->target_size = 0;
  config->target_PSNR = 0.;
  config->method = 4;
  config->sns_strength = 50;
  config->filter_strength = 60;
  config->filter_sharpness = 0;
  config->filter_type = 1;
  config->partitions = 0;
  config->segments = 4;
  config->pass = 1;
  config->show_compressed = 0;
  config->preprocessing = 0;
  config->autofilter = 0;
  config->partition_limit = 0;
  config->alpha_compression = 1;
  config->alpha_filtering = 1;
  config->alpha_quality = 100;
  config->lossless = 0;
  config->exact = 0;
  config->image_hint = WEBP_HINT_DEFAULT;
  config->emulate_jpeg_size = 0;
  config->thread_level = 0;
  config->low_memory = 0;
  config->near_lossless = 100;
  config->use_delta_palette = 0;
  config->use_sharp_yuv = 0;


  switch (preset) {
    case 129:
      config->sns_strength = 80;
      config->filter_sharpness = 4;
      config->filter_strength = 35;
      config->preprocessing &= ~2;
      break;
    case 130:
      config->sns_strength = 80;
      config->filter_sharpness = 3;
      config->filter_strength = 30;
      config->preprocessing |= 2;
      break;
    case 132:
      config->sns_strength = 25;
      config->filter_sharpness = 6;
      config->filter_strength = 10;
      break;
    case 131:
      config->sns_strength = 0;
      config->filter_strength = 0;
      config->preprocessing &= ~2;
      break;
    case 128:
      config->sns_strength = 0;
      config->filter_strength = 0;
      config->preprocessing &= ~2;
      config->segments = 2;
      break;
    case 133:
    default:
      break;
  }
  return WebPValidateConfig(config);
}
