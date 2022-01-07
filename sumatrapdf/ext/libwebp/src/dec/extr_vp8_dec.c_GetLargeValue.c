
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int VP8BitReader ;


 int VP8GetBit (int * const,int const,char*) ;
 int** kCat3456 ;

__attribute__((used)) static int GetLargeValue(VP8BitReader* const br, const uint8_t* const p) {
  int v;
  if (!VP8GetBit(br, p[3], "coeffs")) {
    if (!VP8GetBit(br, p[4], "coeffs")) {
      v = 2;
    } else {
      v = 3 + VP8GetBit(br, p[5], "coeffs");
    }
  } else {
    if (!VP8GetBit(br, p[6], "coeffs")) {
      if (!VP8GetBit(br, p[7], "coeffs")) {
        v = 5 + VP8GetBit(br, 159, "coeffs");
      } else {
        v = 7 + 2 * VP8GetBit(br, 165, "coeffs");
        v += VP8GetBit(br, 145, "coeffs");
      }
    } else {
      const uint8_t* tab;
      const int bit1 = VP8GetBit(br, p[8], "coeffs");
      const int bit0 = VP8GetBit(br, p[9 + bit1], "coeffs");
      const int cat = 2 * bit1 + bit0;
      v = 0;
      for (tab = kCat3456[cat]; *tab; ++tab) {
        v += v + VP8GetBit(br, *tab, "coeffs");
      }
      v += 3 + (8 << cat);
    }
  }
  return v;
}
