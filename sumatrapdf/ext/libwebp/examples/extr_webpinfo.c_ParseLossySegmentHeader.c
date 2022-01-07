
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int WebPInfoStatus ;
typedef int WebPInfo ;


 int GET_BITS (int,int) ;
 int GET_SIGNED_BITS (int,int) ;
 int WEBP_INFO_OK ;
 int printf (char*,int,...) ;

__attribute__((used)) static WebPInfoStatus ParseLossySegmentHeader(const WebPInfo* const webp_info,
                                              const uint8_t* const data,
                                              size_t data_size,
                                              uint64_t* const bit_pos) {
  int use_segment;
  GET_BITS(use_segment, 1);
  printf("  Use segment:      %d\n", use_segment);
  if (use_segment) {
    int update_map, update_data;
    GET_BITS(update_map, 1);
    GET_BITS(update_data, 1);
    printf("  Update map:       %d\n"
           "  Update data:      %d\n",
           update_map, update_data);
    if (update_data) {
      int i, a_delta;
      int quantizer[4] = {0, 0, 0, 0};
      int filter_strength[4] = {0, 0, 0, 0};
      GET_BITS(a_delta, 1);
      printf("  Absolute delta:   %d\n", a_delta);
      for (i = 0; i < 4; ++i) {
        int bit;
        GET_BITS(bit, 1);
        if (bit) GET_SIGNED_BITS(quantizer[i], 7);
      }
      for (i = 0; i < 4; ++i) {
        int bit;
        GET_BITS(bit, 1);
        if (bit) GET_SIGNED_BITS(filter_strength[i], 6);
      }
      printf("  Quantizer:        %d %d %d %d\n", quantizer[0], quantizer[1],
             quantizer[2], quantizer[3]);
      printf("  Filter strength:  %d %d %d %d\n", filter_strength[0],
             filter_strength[1], filter_strength[2], filter_strength[3]);
    }
    if (update_map) {
      int i;
      int prob_segment[3] = {255, 255, 255};
      for (i = 0; i < 3; ++i) {
        int bit;
        GET_BITS(bit, 1);
        if (bit) GET_BITS(prob_segment[i], 8);
      }
      printf("  Prob segment:     %d %d %d\n",
             prob_segment[0], prob_segment[1], prob_segment[2]);
    }
  }
  return WEBP_INFO_OK;
}
