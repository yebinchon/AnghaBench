
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int WebPInfoStatus ;
typedef int WebPInfo ;


 int GET_BITS (int,int) ;
 int WEBP_INFO_OK ;
 int printf (char*,int) ;

__attribute__((used)) static WebPInfoStatus ParseLossyFilterHeader(const WebPInfo* const webp_info,
                                             const uint8_t* const data,
                                             size_t data_size,
                                             uint64_t* const bit_pos) {
  int simple_filter, level, sharpness, use_lf_delta;
  GET_BITS(simple_filter, 1);
  GET_BITS(level, 6);
  GET_BITS(sharpness, 3);
  GET_BITS(use_lf_delta, 1);
  printf("  Simple filter:    %d\n", simple_filter);
  printf("  Level:            %d\n", level);
  printf("  Sharpness:        %d\n", sharpness);
  printf("  Use lf delta:     %d\n", use_lf_delta);
  if (use_lf_delta) {
    int update;
    GET_BITS(update, 1);
    printf("  Update lf delta:  %d\n", update);
    if (update) {
      int i;
      for (i = 0; i < 4 + 4; ++i) {
        int temp;
        GET_BITS(temp, 1);
        if (temp) GET_BITS(temp, 7);
      }
    }
  }
  return WEBP_INFO_OK;
}
