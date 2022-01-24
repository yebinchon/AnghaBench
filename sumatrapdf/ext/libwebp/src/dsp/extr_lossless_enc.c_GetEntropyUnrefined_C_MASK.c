#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint32_t ;
typedef  int /*<<< orphan*/  VP8LStreaks ;
struct TYPE_5__ {int /*<<< orphan*/  sum; int /*<<< orphan*/  entropy; } ;
typedef  TYPE_1__ VP8LBitEntropy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int,int /*<<< orphan*/  const*,int*,TYPE_1__* const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(const uint32_t X[], int length,
                                  VP8LBitEntropy* const bit_entropy,
                                  VP8LStreaks* const stats) {
  int i;
  int i_prev = 0;
  uint32_t x_prev = X[0];

  FUNC3(stats, 0, sizeof(*stats));
  FUNC1(bit_entropy);

  for (i = 1; i < length; ++i) {
    const uint32_t x = X[i];
    if (x != x_prev) {
      FUNC0(x, i, &x_prev, &i_prev, bit_entropy, stats);
    }
  }
  FUNC0(0, i, &x_prev, &i_prev, bit_entropy, stats);

  bit_entropy->entropy += FUNC2(bit_entropy->sum);
}