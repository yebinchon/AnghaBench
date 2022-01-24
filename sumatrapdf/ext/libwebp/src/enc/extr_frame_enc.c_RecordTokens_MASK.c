#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  error_; } ;
typedef  TYPE_2__ VP8TBuffer ;
typedef  int /*<<< orphan*/  VP8Residual ;
struct TYPE_13__ {int /*<<< orphan*/ * uv_levels; int /*<<< orphan*/ * y_ac_levels; int /*<<< orphan*/  y_dc_levels; } ;
typedef  TYPE_3__ VP8ModeScore ;
typedef  int /*<<< orphan*/  VP8Encoder ;
struct TYPE_14__ {int* top_nz_; int* left_nz_; TYPE_1__* mb_; int /*<<< orphan*/ * enc_; } ;
typedef  TYPE_4__ VP8EncIterator ;
struct TYPE_11__ {int type_; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__* const) ; 
 void* FUNC3 (int const,int /*<<< orphan*/ *,TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(VP8EncIterator* const it, const VP8ModeScore* const rd,
                        VP8TBuffer* const tokens) {
  int x, y, ch;
  VP8Residual res;
  VP8Encoder* const enc = it->enc_;

  FUNC2(it);
  if (it->mb_->type_ == 1) {   // i16x16
    const int ctx = it->top_nz_[8] + it->left_nz_[8];
    FUNC0(0, 1, enc, &res);
    FUNC4(rd->y_dc_levels, &res);
    it->top_nz_[8] = it->left_nz_[8] =
        FUNC3(ctx, &res, tokens);
    FUNC0(1, 0, enc, &res);
  } else {
    FUNC0(0, 3, enc, &res);
  }

  // luma-AC
  for (y = 0; y < 4; ++y) {
    for (x = 0; x < 4; ++x) {
      const int ctx = it->top_nz_[x] + it->left_nz_[y];
      FUNC4(rd->y_ac_levels[x + y * 4], &res);
      it->top_nz_[x] = it->left_nz_[y] =
          FUNC3(ctx, &res, tokens);
    }
  }

  // U/V
  FUNC0(0, 2, enc, &res);
  for (ch = 0; ch <= 2; ch += 2) {
    for (y = 0; y < 2; ++y) {
      for (x = 0; x < 2; ++x) {
        const int ctx = it->top_nz_[4 + ch + x] + it->left_nz_[4 + ch + y];
        FUNC4(rd->uv_levels[ch * 2 + x + y * 2], &res);
        it->top_nz_[4 + ch + x] = it->left_nz_[4 + ch + y] =
            FUNC3(ctx, &res, tokens);
      }
    }
  }
  FUNC1(it);
  return !tokens->error_;
}