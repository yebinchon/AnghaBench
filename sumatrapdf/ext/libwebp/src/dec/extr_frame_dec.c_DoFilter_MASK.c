#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int id_; TYPE_2__* f_info_; } ;
typedef  TYPE_1__ VP8ThreadContext ;
struct TYPE_6__ {int f_ilevel_; int f_limit_; int hev_thresh_; scalar_t__ f_inner_; } ;
typedef  TYPE_2__ VP8FInfo ;
struct TYPE_7__ {int cache_y_stride_; int filter_type_; int cache_uv_stride_; int /*<<< orphan*/ * cache_v_; int /*<<< orphan*/ * cache_u_; int /*<<< orphan*/ * cache_y_; TYPE_1__ thread_ctx_; } ;
typedef  TYPE_3__ VP8Decoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const,int const,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const,int const,int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const,int const,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ * const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(const VP8Decoder* const dec, int mb_x, int mb_y) {
  const VP8ThreadContext* const ctx = &dec->thread_ctx_;
  const int cache_id = ctx->id_;
  const int y_bps = dec->cache_y_stride_;
  const VP8FInfo* const f_info = ctx->f_info_ + mb_x;
  uint8_t* const y_dst = dec->cache_y_ + cache_id * 16 * y_bps + mb_x * 16;
  const int ilevel = f_info->f_ilevel_;
  const int limit = f_info->f_limit_;
  if (limit == 0) {
    return;
  }
  FUNC12(limit >= 3);
  if (dec->filter_type_ == 1) {   // simple
    if (mb_x > 0) {
      FUNC4(y_dst, y_bps, limit + 4);
    }
    if (f_info->f_inner_) {
      FUNC5(y_dst, y_bps, limit);
    }
    if (mb_y > 0) {
      FUNC6(y_dst, y_bps, limit + 4);
    }
    if (f_info->f_inner_) {
      FUNC7(y_dst, y_bps, limit);
    }
  } else {    // complex
    const int uv_bps = dec->cache_uv_stride_;
    uint8_t* const u_dst = dec->cache_u_ + cache_id * 8 * uv_bps + mb_x * 8;
    uint8_t* const v_dst = dec->cache_v_ + cache_id * 8 * uv_bps + mb_x * 8;
    const int hev_thresh = f_info->hev_thresh_;
    if (mb_x > 0) {
      FUNC0(y_dst, y_bps, limit + 4, ilevel, hev_thresh);
      FUNC2(u_dst, v_dst, uv_bps, limit + 4, ilevel, hev_thresh);
    }
    if (f_info->f_inner_) {
      FUNC1(y_dst, y_bps, limit, ilevel, hev_thresh);
      FUNC3(u_dst, v_dst, uv_bps, limit, ilevel, hev_thresh);
    }
    if (mb_y > 0) {
      FUNC8(y_dst, y_bps, limit + 4, ilevel, hev_thresh);
      FUNC10(u_dst, v_dst, uv_bps, limit + 4, ilevel, hev_thresh);
    }
    if (f_info->f_inner_) {
      FUNC9(y_dst, y_bps, limit, ilevel, hev_thresh);
      FUNC11(u_dst, v_dst, uv_bps, limit, ilevel, hev_thresh);
    }
  }
}