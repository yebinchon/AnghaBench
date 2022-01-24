#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_20__ {scalar_t__ error_; } ;
struct TYPE_19__ {int mb_w_; int mb_h_; int num_parts_; TYPE_4__* pic_; scalar_t__ alpha_data_size_; int /*<<< orphan*/  proba_; int /*<<< orphan*/  filter_hdr_; TYPE_3__ bw_; } ;
typedef  TYPE_2__ VP8Encoder ;
typedef  TYPE_3__ VP8BitWriter ;
struct TYPE_21__ {TYPE_1__* stats; } ;
struct TYPE_18__ {int* header_bytes; int alpha_data_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__* const,TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__* const,TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__* const,int const) ; 
 int FUNC5 (TYPE_3__* const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__* const,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_OUT_OF_MEMORY ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(VP8Encoder* const enc) {
  VP8BitWriter* const bw = &enc->bw_;
  const int mb_size = enc->mb_w_ * enc->mb_h_;
  uint64_t pos1, pos2, pos3;

  pos1 = FUNC5(bw);
  if (!FUNC4(bw, mb_size * 7 / 8)) {        // ~7 bits per macroblock
    return FUNC10(enc->pic_, VP8_ENC_ERROR_OUT_OF_MEMORY);
  }
  FUNC7(bw, 0);   // colorspace
  FUNC7(bw, 0);   // clamp type

  FUNC2(bw, enc);
  FUNC0(bw, &enc->filter_hdr_);
  FUNC8(bw, enc->num_parts_ == 8 ? 3 :
                 enc->num_parts_ == 4 ? 2 :
                 enc->num_parts_ == 2 ? 1 : 0, 2);
  FUNC1(bw, enc);
  FUNC7(bw, 0);   // no proba update
  FUNC9(bw, &enc->proba_);
  pos2 = FUNC5(bw);
  FUNC6(enc);
  FUNC3(bw);

  pos3 = FUNC5(bw);

#if !defined(WEBP_DISABLE_STATS)
  if (enc->pic_->stats) {
    enc->pic_->stats->header_bytes[0] = (int)((pos2 - pos1 + 7) >> 3);
    enc->pic_->stats->header_bytes[1] = (int)((pos3 - pos2 + 7) >> 3);
    enc->pic_->stats->alpha_data_size = (int)enc->alpha_data_size_;
  }
#else
  (void)pos1;
  (void)pos2;
  (void)pos3;
#endif
  if (bw->error_) {
    return FUNC10(enc->pic_, VP8_ENC_ERROR_OUT_OF_MEMORY);
  }
  return 1;
}