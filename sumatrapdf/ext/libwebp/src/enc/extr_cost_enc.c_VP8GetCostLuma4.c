
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
typedef int VP8Residual ;
typedef int VP8Encoder ;
struct TYPE_3__ {int i4_; int* top_nz_; int* left_nz_; int * enc_; } ;
typedef TYPE_1__ VP8EncIterator ;


 scalar_t__ VP8GetResidualCost (int,int *) ;
 int VP8InitResidual (int ,int,int * const,int *) ;
 int VP8SetResidualCoeffs (int const*,int *) ;

int VP8GetCostLuma4(VP8EncIterator* const it, const int16_t levels[16]) {
  const int x = (it->i4_ & 3), y = (it->i4_ >> 2);
  VP8Residual res;
  VP8Encoder* const enc = it->enc_;
  int R = 0;
  int ctx;

  VP8InitResidual(0, 3, enc, &res);
  ctx = it->top_nz_[x] + it->left_nz_[y];
  VP8SetResidualCoeffs(levels, &res);
  R += VP8GetResidualCost(ctx, &res);
  return R;
}
