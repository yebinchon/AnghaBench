#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ last; } ;
typedef  TYPE_1__ VP8Residual ;
struct TYPE_11__ {int /*<<< orphan*/ * uv_levels; } ;
typedef  TYPE_2__ VP8ModeScore ;
typedef  int /*<<< orphan*/  VP8Encoder ;
struct TYPE_12__ {int* top_nz_; int* left_nz_; int /*<<< orphan*/ * enc_; } ;
typedef  TYPE_3__ VP8EncIterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ * const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC4(VP8EncIterator* const it, const VP8ModeScore* const rd) {
  VP8Residual res;
  VP8Encoder* const enc = it->enc_;
  int ch, x, y;
  int R = 0;

  FUNC2(it);  // re-import the non-zero context

  FUNC1(0, 2, enc, &res);
  for (ch = 0; ch <= 2; ch += 2) {
    for (y = 0; y < 2; ++y) {
      for (x = 0; x < 2; ++x) {
        const int ctx = it->top_nz_[4 + ch + x] + it->left_nz_[4 + ch + y];
        FUNC3(rd->uv_levels[ch * 2 + x + y * 2], &res);
        R += FUNC0(ctx, &res);
        it->top_nz_[4 + ch + x] = it->left_nz_[4 + ch + y] = (res.last >= 0);
      }
    }
  }
  return R;
}