
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int16_t ;
struct TYPE_3__ {int last; scalar_t__ first; scalar_t__* coeffs; } ;
typedef TYPE_1__ VP8Residual ;


 int assert (int) ;

__attribute__((used)) static void SetResidualCoeffs_C(const int16_t* const coeffs,
                                VP8Residual* const res) {
  int n;
  res->last = -1;
  assert(res->first == 0 || coeffs[0] == 0);
  for (n = 15; n >= 0; --n) {
    if (coeffs[n]) {
      res->last = n;
      break;
    }
  }
  res->coeffs = coeffs;
}
