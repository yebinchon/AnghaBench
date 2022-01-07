
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const uint64_t ;
struct TYPE_5__ {int width; int height; int const a_stride; TYPE_4__* stats; int * a; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_6__ {int* sse_; TYPE_1__* pic_; } ;
typedef TYPE_2__ VP8Encoder ;
struct TYPE_7__ {int coded_size; } ;


 int ALPHA_LOSSLESS_COMPRESSION ;
 int ALPHA_NO_COMPRESSION ;
 int ApplyFiltersAndEncode (int *,int const,int const,size_t const,int,int,int const,int,int ** const,size_t* const,TYPE_4__*) ;
 int QuantizeLevels (int *,int const,int const,int const,int const*) ;
 int VP8FiltersInit () ;
 int WEBP_FILTER_FAST ;
 int WEBP_FILTER_NONE ;
 int WebPCopyPlane (int *,int const,int *,int const,int const,int const) ;
 int WebPSafeFree (int *) ;
 scalar_t__ WebPSafeMalloc (unsigned long long,size_t const) ;
 int assert (int) ;

__attribute__((used)) static int EncodeAlpha(VP8Encoder* const enc,
                       int quality, int method, int filter,
                       int effort_level,
                       uint8_t** const output, size_t* const output_size) {
  const WebPPicture* const pic = enc->pic_;
  const int width = pic->width;
  const int height = pic->height;

  uint8_t* quant_alpha = ((void*)0);
  const size_t data_size = width * height;
  uint64_t sse = 0;
  int ok = 1;
  const int reduce_levels = (quality < 100);


  assert((uint64_t)data_size == (uint64_t)width * height);
  assert(enc != ((void*)0) && pic != ((void*)0) && pic->a != ((void*)0));
  assert(output != ((void*)0) && output_size != ((void*)0));
  assert(width > 0 && height > 0);
  assert(pic->a_stride >= width);
  assert(filter >= WEBP_FILTER_NONE && filter <= WEBP_FILTER_FAST);

  if (quality < 0 || quality > 100) {
    return 0;
  }

  if (method < ALPHA_NO_COMPRESSION || method > ALPHA_LOSSLESS_COMPRESSION) {
    return 0;
  }

  if (method == ALPHA_NO_COMPRESSION) {

    filter = WEBP_FILTER_NONE;
  }

  quant_alpha = (uint8_t*)WebPSafeMalloc(1ULL, data_size);
  if (quant_alpha == ((void*)0)) {
    return 0;
  }


  WebPCopyPlane(pic->a, pic->a_stride, quant_alpha, width, width, height);

  if (reduce_levels) {



    const int alpha_levels = (quality <= 70) ? (2 + quality / 5)
                                             : (16 + (quality - 70) * 8);
    ok = QuantizeLevels(quant_alpha, width, height, alpha_levels, &sse);
  }

  if (ok) {
    VP8FiltersInit();
    ok = ApplyFiltersAndEncode(quant_alpha, width, height, data_size, method,
                               filter, reduce_levels, effort_level, output,
                               output_size, pic->stats);

    if (pic->stats != ((void*)0)) {
      pic->stats->coded_size += (int)(*output_size);
      enc->sse_[3] = sse;
    }

  }

  WebPSafeFree(quant_alpha);
  return ok;
}
