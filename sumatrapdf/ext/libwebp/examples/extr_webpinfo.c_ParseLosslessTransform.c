
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int WebPInfoStatus ;
typedef int WebPInfo ;




 int LL_GET_BITS (int,int) ;

 int WEBP_INFO_OK ;
 char** kLosslessTransforms ;
 int printf (char*,...) ;

__attribute__((used)) static WebPInfoStatus ParseLosslessTransform(WebPInfo* const webp_info,
                                             const uint8_t* const data,
                                             size_t data_size,
                                             uint64_t* const bit_pos) {
  int use_transform, block_size, n_colors;
  LL_GET_BITS(use_transform, 1);
  printf("  Use transform:    %s\n", use_transform ? "Yes" : "No");
  if (use_transform) {
    int type;
    LL_GET_BITS(type, 2);
    printf("  1st transform:    %s (%d)\n", kLosslessTransforms[type], type);
    switch (type) {
      case 128:
      case 129:
        LL_GET_BITS(block_size, 3);
        block_size = 1 << (block_size + 2);
        printf("  Tran. block size: %d\n", block_size);
        break;
      case 130:
        LL_GET_BITS(n_colors, 8);
        n_colors += 1;
        printf("  No. of colors:    %d\n", n_colors);
        break;
      default: break;
    }
  }
  return WEBP_INFO_OK;
}
