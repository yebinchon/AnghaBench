
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int SFormat ;


 int ND_MUL2K_DIV1E9 (int) ;
 int ND_MUL2K_MAX_SHIFT ;
 scalar_t__ STRFMT_FP (int ) ;
 int STRFMT_PREC (int ) ;
 int STRFMT_T_FP_F ;

__attribute__((used)) static uint32_t nd_mul2k(uint32_t* nd, uint32_t ndhi, uint32_t k,
    uint32_t carry_in, SFormat sf)
{
  uint32_t i, ndlo = 0, start = 1;

  if (k > ND_MUL2K_MAX_SHIFT*2 && STRFMT_FP(sf) != STRFMT_FP(STRFMT_T_FP_F)) {
    start = ndhi - (STRFMT_PREC(sf) + 17) / 8;
  }

  while (k >= ND_MUL2K_MAX_SHIFT) {
    for (i = ndlo; i <= ndhi; i++) {
      uint64_t val = ((uint64_t)nd[i] << ND_MUL2K_MAX_SHIFT) | carry_in;
      carry_in = ND_MUL2K_DIV1E9(val);
      nd[i] = (uint32_t)val - carry_in * 1000000000;
    }
    if (carry_in) {
      nd[++ndhi] = carry_in; carry_in = 0;
      if (start++ == ndlo) ++ndlo;
    }
    k -= ND_MUL2K_MAX_SHIFT;
  }
  if (k) {
    for (i = ndlo; i <= ndhi; i++) {
      uint64_t val = ((uint64_t)nd[i] << k) | carry_in;
      carry_in = ND_MUL2K_DIV1E9(val);
      nd[i] = (uint32_t)val - carry_in * 1000000000;
    }
    if (carry_in) nd[++ndhi] = carry_in;
  }
  return ndhi;
}
