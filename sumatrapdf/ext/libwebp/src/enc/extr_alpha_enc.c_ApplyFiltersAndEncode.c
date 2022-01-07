
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int lossless_data_size; int lossless_hdr_size; int lossless_size; int palette_size; int cache_bits; int transform_bits; int histogram_bits; int lossless_features; } ;
typedef TYPE_2__ WebPAuxStats ;
struct TYPE_7__ {int lossless_data_size; int lossless_hdr_size; int lossless_size; int palette_size; int cache_bits; int transform_bits; int histogram_bits; int lossless_features; } ;
struct TYPE_9__ {scalar_t__ score; int bw; TYPE_1__ stats; } ;
typedef TYPE_3__ FilterTrial ;


 int EncodeAlphaInternal (int const*,int,int,int,int,int,int,int *,TYPE_3__*) ;
 int FILTER_TRY_NONE ;
 int GetFilterMap (int const*,int,int,int,int) ;
 int InitFilterTrial (TYPE_3__*) ;
 int * VP8BitWriterBuf (int *) ;
 size_t VP8BitWriterSize (int *) ;
 int VP8BitWriterWipeOut (int *) ;
 int WEBP_FILTER_NONE ;
 int WebPSafeFree (int *) ;
 scalar_t__ WebPSafeMalloc (unsigned long long,size_t) ;

__attribute__((used)) static int ApplyFiltersAndEncode(const uint8_t* alpha, int width, int height,
                                 size_t data_size, int method, int filter,
                                 int reduce_levels, int effort_level,
                                 uint8_t** const output,
                                 size_t* const output_size,
                                 WebPAuxStats* const stats) {
  int ok = 1;
  FilterTrial best;
  uint32_t try_map =
      GetFilterMap(alpha, width, height, filter, effort_level);
  InitFilterTrial(&best);

  if (try_map != FILTER_TRY_NONE) {
    uint8_t* filtered_alpha = (uint8_t*)WebPSafeMalloc(1ULL, data_size);
    if (filtered_alpha == ((void*)0)) return 0;

    for (filter = WEBP_FILTER_NONE; ok && try_map; ++filter, try_map >>= 1) {
      if (try_map & 1) {
        FilterTrial trial;
        ok = EncodeAlphaInternal(alpha, width, height, method, filter,
                                 reduce_levels, effort_level, filtered_alpha,
                                 &trial);
        if (ok && trial.score < best.score) {
          VP8BitWriterWipeOut(&best.bw);
          best = trial;
        } else {
          VP8BitWriterWipeOut(&trial.bw);
        }
      }
    }
    WebPSafeFree(filtered_alpha);
  } else {
    ok = EncodeAlphaInternal(alpha, width, height, method, WEBP_FILTER_NONE,
                             reduce_levels, effort_level, ((void*)0), &best);
  }
  if (ok) {

    if (stats != ((void*)0)) {
      stats->lossless_features = best.stats.lossless_features;
      stats->histogram_bits = best.stats.histogram_bits;
      stats->transform_bits = best.stats.transform_bits;
      stats->cache_bits = best.stats.cache_bits;
      stats->palette_size = best.stats.palette_size;
      stats->lossless_size = best.stats.lossless_size;
      stats->lossless_hdr_size = best.stats.lossless_hdr_size;
      stats->lossless_data_size = best.stats.lossless_data_size;
    }



    *output_size = VP8BitWriterSize(&best.bw);
    *output = VP8BitWriterBuf(&best.bw);
  } else {
    VP8BitWriterWipeOut(&best.bw);
  }
  return ok;
}
