#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ VP8RDLevel ;
struct TYPE_21__ {int H; scalar_t__ D; } ;
typedef  TYPE_3__ VP8ModeScore ;
struct TYPE_23__ {scalar_t__ use_skip_proba_; scalar_t__ coeffs_; } ;
struct TYPE_20__ {int size_; } ;
struct TYPE_22__ {int mb_w_; int mb_h_; int do_search_; scalar_t__ rd_opt_level_; int num_parts_; int use_tokens_; scalar_t__ max_i4_header_bits_; scalar_t__ percent_; int /*<<< orphan*/  pic_; scalar_t__ parts_; int /*<<< orphan*/  tokens_; TYPE_5__ proba_; TYPE_2__ segment_hdr_; TYPE_1__* config_; } ;
typedef  TYPE_4__ VP8Encoder ;
typedef  TYPE_5__ VP8EncProba ;
typedef  int /*<<< orphan*/  VP8EncIterator ;
struct TYPE_24__ {double value; scalar_t__ do_size_search; int /*<<< orphan*/  dq; int /*<<< orphan*/  q; int /*<<< orphan*/  last_q; int /*<<< orphan*/  last_value; } ;
struct TYPE_19__ {int pass; } ;
typedef  TYPE_6__ PassStats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 scalar_t__ DQ_LIMIT ; 
 int FUNC1 (TYPE_5__* const) ; 
 double FUNC2 (int,int const) ; 
 scalar_t__ HEADER_SIZE_ESTIMATE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__* const,TYPE_6__*) ; 
 int MIN_COUNT ; 
 int PARTITION0_SIZE_LIMIT ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_4__* const) ; 
 scalar_t__ const RD_OPT_BASIC ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__* const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__* const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__ const) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__* const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC29(VP8Encoder* const enc) {
  // Roughly refresh the proba eight times per pass
  int max_count = (enc->mb_w_ * enc->mb_h_) >> 3;
  int num_pass_left = enc->config_->pass;
  const int do_search = enc->do_search_;
  VP8EncIterator it;
  VP8EncProba* const proba = &enc->proba_;
  const VP8RDLevel rd_opt = enc->rd_opt_level_;
  const uint64_t pixel_count = enc->mb_w_ * enc->mb_h_ * 384;
  PassStats stats;
  int ok;

  FUNC3(enc, &stats);
  ok = FUNC5(enc);
  if (!ok) return 0;

  if (max_count < MIN_COUNT) max_count = MIN_COUNT;

  FUNC26(enc->num_parts_ == 1);
  FUNC26(enc->use_tokens_);
  FUNC26(proba->use_skip_proba_ == 0);
  FUNC26(rd_opt >= RD_OPT_BASIC);   // otherwise, token-buffer won't be useful
  FUNC26(num_pass_left > 0);

  while (ok && num_pass_left-- > 0) {
    const int is_last_pass = (FUNC27(stats.dq) <= DQ_LIMIT) ||
                             (num_pass_left == 0) ||
                             (enc->max_i4_header_bits_ == 0);
    uint64_t size_p0 = 0;
    uint64_t distortion = 0;
    int cnt = max_count;
    FUNC18(enc, &it);
    FUNC9(enc, stats.q);
    if (is_last_pass) {
      FUNC8(enc);
      FUNC15(&it);  // don't collect stats until last pass (too costly)
    }
    FUNC23(&enc->tokens_);
    do {
      VP8ModeScore info;
      FUNC17(&it, NULL);
      if (--cnt < 0) {
        FUNC1(proba);
        FUNC11(proba);  // refresh cost tables for rd-opt
        cnt = max_count;
      }
      FUNC12(&it, &info, rd_opt);
      ok = FUNC6(&it, &info, &enc->tokens_);
      if (!ok) {
        FUNC24(enc->pic_, VP8_ENC_ERROR_OUT_OF_MEMORY);
        break;
      }
      size_p0 += info.H;
      distortion += info.D;
      if (is_last_pass) {
        FUNC10(&it);
        FUNC22(&it);
        FUNC16(&it);
        ok = FUNC20(&it, 20);
      }
      FUNC21(&it);
    } while (ok && FUNC19(&it));
    if (!ok) break;

    size_p0 += enc->segment_hdr_.size_;
    if (stats.do_size_search) {
      uint64_t size = FUNC1(&enc->proba_);
      size += FUNC14(&enc->tokens_,
                                   (const uint8_t*)proba->coeffs_);
      size = (size + size_p0 + 1024) >> 11;  // -> size in bytes
      size += HEADER_SIZE_ESTIMATE;
      stats.value = (double)size;
    } else {  // compute and store PSNR
      stats.value = FUNC2(distortion, pixel_count);
    }

#if (DEBUG_SEARCH > 0)
    printf("#%2d metric:%.1lf -> %.1lf   last_q=%.2lf q=%.2lf dq=%.2lf\n",
           num_pass_left, stats.last_value, stats.value,
           stats.last_q, stats.q, stats.dq);
#endif
    if (enc->max_i4_header_bits_ > 0 && size_p0 > PARTITION0_SIZE_LIMIT) {
      ++num_pass_left;
      enc->max_i4_header_bits_ >>= 1;  // strengthen header bit limitation...
      if (is_last_pass) {
        FUNC7(&it);
      }
      continue;                        // ...and start over
    }
    if (is_last_pass) {
      break;   // done
    }
    if (do_search) {
      FUNC0(&stats);  // Adjust q
    }
  }
  if (ok) {
    if (!stats.do_size_search) {
      FUNC1(&enc->proba_);
    }
    ok = FUNC13(&enc->tokens_, enc->parts_ + 0,
                       (const uint8_t*)proba->coeffs_, 1);
  }
  ok = ok && FUNC25(enc->pic_, enc->percent_ + 20, &enc->percent_);
  return FUNC4(&it, ok);
}