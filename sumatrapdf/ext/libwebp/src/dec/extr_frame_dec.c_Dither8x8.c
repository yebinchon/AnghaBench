
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int VP8Random ;


 int VP8DitherCombine8x8 (int *,int *,int) ;
 int VP8RandomBits2 (int * const,scalar_t__,int) ;
 scalar_t__ VP8_DITHER_AMP_BITS ;

__attribute__((used)) static void Dither8x8(VP8Random* const rg, uint8_t* dst, int bps, int amp) {
  uint8_t dither[64];
  int i;
  for (i = 0; i < 8 * 8; ++i) {
    dither[i] = VP8RandomBits2(rg, VP8_DITHER_AMP_BITS + 1, amp);
  }
  VP8DitherCombine8x8(dither, dst, bps);
}
