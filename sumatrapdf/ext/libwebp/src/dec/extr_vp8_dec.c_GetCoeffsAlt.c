
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int* quant_t ;
typedef int int16_t ;
typedef int * VP8ProbaArray ;
typedef int VP8BitReader ;
struct TYPE_3__ {int ** probas_; } ;
typedef TYPE_1__ VP8BandProbas ;


 int GetLargeValue (int * const,int const*) ;
 int VP8GetBitAlt (int * const,int const,char*) ;
 int VP8GetSigned (int * const,int,char*) ;
 size_t* kZigzag ;

__attribute__((used)) static int GetCoeffsAlt(VP8BitReader* const br,
                        const VP8BandProbas* const prob[],
                        int ctx, const quant_t dq, int n, int16_t* out) {
  const uint8_t* p = prob[n]->probas_[ctx];
  for (; n < 16; ++n) {
    if (!VP8GetBitAlt(br, p[0], "coeffs")) {
      return n;
    }
    while (!VP8GetBitAlt(br, p[1], "coeffs")) {
      p = prob[++n]->probas_[0];
      if (n == 16) return 16;
    }
    {
      const VP8ProbaArray* const p_ctx = &prob[n + 1]->probas_[0];
      int v;
      if (!VP8GetBitAlt(br, p[2], "coeffs")) {
        v = 1;
        p = p_ctx[1];
      } else {
        v = GetLargeValue(br, p);
        p = p_ctx[2];
      }
      out[kZigzag[n]] = VP8GetSigned(br, v, "coeffs") * dq[n > 0];
    }
  }
  return 16;
}
