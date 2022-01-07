
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int BlendChannelNonPremult (int,int const,int,int const,int const,int) ;
 int assert (int) ;

__attribute__((used)) static uint32_t BlendPixelNonPremult(uint32_t src, uint32_t dst) {
  const uint8_t src_a = (src >> 24) & 0xff;

  if (src_a == 0) {
    return dst;
  } else {
    const uint8_t dst_a = (dst >> 24) & 0xff;


    const uint8_t dst_factor_a = (dst_a * (256 - src_a)) >> 8;
    const uint8_t blend_a = src_a + dst_factor_a;
    const uint32_t scale = (1UL << 24) / blend_a;

    const uint8_t blend_r =
        BlendChannelNonPremult(src, src_a, dst, dst_factor_a, scale, 0);
    const uint8_t blend_g =
        BlendChannelNonPremult(src, src_a, dst, dst_factor_a, scale, 8);
    const uint8_t blend_b =
        BlendChannelNonPremult(src, src_a, dst, dst_factor_a, scale, 16);
    assert(src_a + dst_factor_a < 256);

    return (blend_r << 0) |
           (blend_g << 8) |
           (blend_b << 16) |
           ((uint32_t)blend_a << 24);
  }
}
