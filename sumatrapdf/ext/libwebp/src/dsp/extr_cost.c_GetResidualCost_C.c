
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int first; int*** prob; int last; int * coeffs; int *** costs; } ;
typedef TYPE_1__ VP8Residual ;
typedef int *** CostArrayPtr ;


 int VP8BitCost (int,int const) ;
 int* VP8EncBands ;
 scalar_t__ VP8LevelCost (int const*,int const) ;
 int abs (int ) ;
 int assert (int) ;

__attribute__((used)) static int GetResidualCost_C(int ctx0, const VP8Residual* const res) {
  int n = res->first;

  const int p0 = res->prob[n][ctx0][0];
  CostArrayPtr const costs = res->costs;
  const uint16_t* t = costs[n][ctx0];



  int cost = (ctx0 == 0) ? VP8BitCost(1, p0) : 0;

  if (res->last < 0) {
    return VP8BitCost(0, p0);
  }
  for (; n < res->last; ++n) {
    const int v = abs(res->coeffs[n]);
    const int ctx = (v >= 2) ? 2 : v;
    cost += VP8LevelCost(t, v);
    t = costs[n + 1][ctx];
  }

  {
    const int v = abs(res->coeffs[n]);
    assert(v != 0);
    cost += VP8LevelCost(t, v);
    if (n < 15) {
      const int b = VP8EncBands[n + 1];
      const int ctx = (v == 1) ? 1 : 2;
      const int last_p0 = res->prob[b][ctx][0];
      cost += VP8BitCost(0, last_p0);
    }
  }
  return cost;
}
