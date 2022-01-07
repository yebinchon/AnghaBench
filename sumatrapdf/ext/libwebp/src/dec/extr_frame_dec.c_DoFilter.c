
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int id_; TYPE_2__* f_info_; } ;
typedef TYPE_1__ VP8ThreadContext ;
struct TYPE_6__ {int f_ilevel_; int f_limit_; int hev_thresh_; scalar_t__ f_inner_; } ;
typedef TYPE_2__ VP8FInfo ;
struct TYPE_7__ {int cache_y_stride_; int filter_type_; int cache_uv_stride_; int * cache_v_; int * cache_u_; int * cache_y_; TYPE_1__ thread_ctx_; } ;
typedef TYPE_3__ VP8Decoder ;


 int VP8HFilter16 (int * const,int const,int const,int const,int const) ;
 int VP8HFilter16i (int * const,int const,int const,int const,int const) ;
 int VP8HFilter8 (int * const,int * const,int const,int const,int const,int const) ;
 int VP8HFilter8i (int * const,int * const,int const,int const,int const,int const) ;
 int VP8SimpleHFilter16 (int * const,int const,int const) ;
 int VP8SimpleHFilter16i (int * const,int const,int const) ;
 int VP8SimpleVFilter16 (int * const,int const,int const) ;
 int VP8SimpleVFilter16i (int * const,int const,int const) ;
 int VP8VFilter16 (int * const,int const,int const,int const,int const) ;
 int VP8VFilter16i (int * const,int const,int const,int const,int const) ;
 int VP8VFilter8 (int * const,int * const,int const,int const,int const,int const) ;
 int VP8VFilter8i (int * const,int * const,int const,int const,int const,int const) ;
 int assert (int) ;

__attribute__((used)) static void DoFilter(const VP8Decoder* const dec, int mb_x, int mb_y) {
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
  assert(limit >= 3);
  if (dec->filter_type_ == 1) {
    if (mb_x > 0) {
      VP8SimpleHFilter16(y_dst, y_bps, limit + 4);
    }
    if (f_info->f_inner_) {
      VP8SimpleHFilter16i(y_dst, y_bps, limit);
    }
    if (mb_y > 0) {
      VP8SimpleVFilter16(y_dst, y_bps, limit + 4);
    }
    if (f_info->f_inner_) {
      VP8SimpleVFilter16i(y_dst, y_bps, limit);
    }
  } else {
    const int uv_bps = dec->cache_uv_stride_;
    uint8_t* const u_dst = dec->cache_u_ + cache_id * 8 * uv_bps + mb_x * 8;
    uint8_t* const v_dst = dec->cache_v_ + cache_id * 8 * uv_bps + mb_x * 8;
    const int hev_thresh = f_info->hev_thresh_;
    if (mb_x > 0) {
      VP8HFilter16(y_dst, y_bps, limit + 4, ilevel, hev_thresh);
      VP8HFilter8(u_dst, v_dst, uv_bps, limit + 4, ilevel, hev_thresh);
    }
    if (f_info->f_inner_) {
      VP8HFilter16i(y_dst, y_bps, limit, ilevel, hev_thresh);
      VP8HFilter8i(u_dst, v_dst, uv_bps, limit, ilevel, hev_thresh);
    }
    if (mb_y > 0) {
      VP8VFilter16(y_dst, y_bps, limit + 4, ilevel, hev_thresh);
      VP8VFilter8(u_dst, v_dst, uv_bps, limit + 4, ilevel, hev_thresh);
    }
    if (f_info->f_inner_) {
      VP8VFilter16i(y_dst, y_bps, limit, ilevel, hev_thresh);
      VP8VFilter8i(u_dst, v_dst, uv_bps, limit, ilevel, hev_thresh);
    }
  }
}
