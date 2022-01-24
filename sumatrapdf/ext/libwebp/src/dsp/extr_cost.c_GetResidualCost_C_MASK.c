#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int first; int*** prob; int last; int /*<<< orphan*/ * coeffs; int /*<<< orphan*/ *** costs; } ;
typedef  TYPE_1__ VP8Residual ;
typedef  int /*<<< orphan*/ *** CostArrayPtr ;

/* Variables and functions */
 int FUNC0 (int,int const) ; 
 int* VP8EncBands ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int const) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int ctx0, const VP8Residual* const res) {
  int n = res->first;
  // should be prob[VP8EncBands[n]], but it's equivalent for n=0 or 1
  const int p0 = res->prob[n][ctx0][0];
  CostArrayPtr const costs = res->costs;
  const uint16_t* t = costs[n][ctx0];
  // bit_cost(1, p0) is already incorporated in t[] tables, but only if ctx != 0
  // (as required by the syntax). For ctx0 == 0, we need to add it here or it'll
  // be missing during the loop.
  int cost = (ctx0 == 0) ? FUNC0(1, p0) : 0;

  if (res->last < 0) {
    return FUNC0(0, p0);
  }
  for (; n < res->last; ++n) {
    const int v = FUNC2(res->coeffs[n]);
    const int ctx = (v >= 2) ? 2 : v;
    cost += FUNC1(t, v);
    t = costs[n + 1][ctx];
  }
  // Last coefficient is always non-zero
  {
    const int v = FUNC2(res->coeffs[n]);
    FUNC3(v != 0);
    cost += FUNC1(t, v);
    if (n < 15) {
      const int b = VP8EncBands[n + 1];
      const int ctx = (v == 1) ? 1 : 2;
      const int last_p0 = res->prob[b][ctx][0];
      cost += FUNC0(0, last_p0);
    }
  }
  return cost;
}