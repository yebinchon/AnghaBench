
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int FILTER_TRY_ALL ;
 int FILTER_TRY_NONE ;
 int GetNumColors (int const*,int,int,int) ;
 int WEBP_FILTER_FAST ;
 int WEBP_FILTER_NONE ;
 int WebPEstimateBestFilter (int const*,int,int,int) ;

__attribute__((used)) static uint32_t GetFilterMap(const uint8_t* alpha, int width, int height,
                             int filter, int effort_level) {
  uint32_t bit_map = 0U;
  if (filter == WEBP_FILTER_FAST) {

    int try_filter_none = (effort_level > 3);
    const int kMinColorsForFilterNone = 16;
    const int kMaxColorsForFilterNone = 192;
    const int num_colors = GetNumColors(alpha, width, height, width);

    filter = (num_colors <= kMinColorsForFilterNone)
        ? WEBP_FILTER_NONE
        : WebPEstimateBestFilter(alpha, width, height, width);
    bit_map |= 1 << filter;


    if (try_filter_none || num_colors > kMaxColorsForFilterNone) {
      bit_map |= FILTER_TRY_NONE;
    }
  } else if (filter == WEBP_FILTER_NONE) {
    bit_map = FILTER_TRY_NONE;
  } else {
    bit_map = FILTER_TRY_ALL;
  }
  return bit_map;
}
