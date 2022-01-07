
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; int argb_stride; int * argb; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_9__ {int method; int quality; } ;
typedef TYPE_2__ WebPConfig ;
struct TYPE_10__ {int palette_size_; int transform_bits_; int histo_bits_; int palette_; TYPE_2__* config_; TYPE_1__* pic_; } ;
typedef TYPE_3__ VP8LEncoder ;
struct TYPE_11__ {int entropy_idx_; int* lz77s_types_to_try_; int lz77s_types_to_try_size_; } ;
typedef int EntropyIx ;
typedef TYPE_4__ CrunchConfig ;


 int AnalyzeAndCreatePalette (TYPE_1__ const* const,int const,int ,int*) ;
 int AnalyzeEntropy (int *,int const,int const,int ,int,int,int ,int*,int* const) ;
 int CRUNCH_CONFIGS_LZ77_MAX ;
 int CRUNCH_CONFIGS_MAX ;
 int GetHistoBits (int const,int,int,int) ;
 int GetTransformBits (int const,int ) ;
 int assert (int) ;
 int kLZ77Box ;
 int kLZ77RLE ;
 int kLZ77Standard ;
 int kNumEntropyIx ;
 int kPalette ;
 int kSpatialSubGreen ;

__attribute__((used)) static int EncoderAnalyze(VP8LEncoder* const enc,
                          CrunchConfig crunch_configs[CRUNCH_CONFIGS_MAX],
                          int* const crunch_configs_size,
                          int* const red_and_blue_always_zero) {
  const WebPPicture* const pic = enc->pic_;
  const int width = pic->width;
  const int height = pic->height;
  const WebPConfig* const config = enc->config_;
  const int method = config->method;
  const int low_effort = (config->method == 0);
  int i;
  int use_palette;
  int n_lz77s;
  assert(pic != ((void*)0) && pic->argb != ((void*)0));

  use_palette =
      AnalyzeAndCreatePalette(pic, low_effort,
                              enc->palette_, &enc->palette_size_);


  enc->histo_bits_ = GetHistoBits(method, use_palette,
                                  pic->width, pic->height);
  enc->transform_bits_ = GetTransformBits(method, enc->histo_bits_);

  if (low_effort) {

    crunch_configs[0].entropy_idx_ = use_palette ? kPalette : kSpatialSubGreen;
    n_lz77s = 1;
    *crunch_configs_size = 1;
  } else {
    EntropyIx min_entropy_ix;

    n_lz77s = (enc->palette_size_ > 0 && enc->palette_size_ <= 16) ? 2 : 1;
    if (!AnalyzeEntropy(pic->argb, width, height, pic->argb_stride, use_palette,
                        enc->palette_size_, enc->transform_bits_,
                        &min_entropy_ix, red_and_blue_always_zero)) {
      return 0;
    }
    if (method == 6 && config->quality == 100) {

      *crunch_configs_size = 0;
      for (i = 0; i < kNumEntropyIx; ++i) {
        if (i != kPalette || use_palette) {
          assert(*crunch_configs_size < CRUNCH_CONFIGS_MAX);
          crunch_configs[(*crunch_configs_size)++].entropy_idx_ = i;
        }
      }
    } else {

      *crunch_configs_size = 1;
      crunch_configs[0].entropy_idx_ = min_entropy_ix;
    }
  }

  assert(n_lz77s <= CRUNCH_CONFIGS_LZ77_MAX);
  for (i = 0; i < *crunch_configs_size; ++i) {
    int j;
    for (j = 0; j < n_lz77s; ++j) {
      crunch_configs[i].lz77s_types_to_try_[j] =
          (j == 0) ? kLZ77Standard | kLZ77RLE : kLZ77Box;
    }
    crunch_configs[i].lz77s_types_to_try_size_ = n_lz77s;
  }
  return 1;
}
