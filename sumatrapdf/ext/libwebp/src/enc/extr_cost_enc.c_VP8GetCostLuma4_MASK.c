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
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  VP8Residual ;
typedef  int /*<<< orphan*/  VP8Encoder ;
struct TYPE_3__ {int i4_; int* top_nz_; int* left_nz_; int /*<<< orphan*/ * enc_; } ;
typedef  TYPE_1__ VP8EncIterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC3(VP8EncIterator* const it, const int16_t levels[16]) {
  const int x = (it->i4_ & 3), y = (it->i4_ >> 2);
  VP8Residual res;
  VP8Encoder* const enc = it->enc_;
  int R = 0;
  int ctx;

  FUNC1(0, 3, enc, &res);
  ctx = it->top_nz_[x] + it->left_nz_[y];
  FUNC2(levels, &res);
  R += FUNC0(ctx, &res);
  return R;
}