#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_14__ {scalar_t__ (* writer ) (int /*<<< orphan*/  const* const,size_t const,TYPE_1__* const) ;} ;
typedef  TYPE_1__ WebPPicture ;
struct TYPE_15__ {int const num_parts_; int percent_; int alpha_data_size_; int coded_size_; int /*<<< orphan*/ * const parts_; scalar_t__ has_alpha_; int /*<<< orphan*/  bw_; TYPE_1__* pic_; } ;
typedef  TYPE_2__ VP8Encoder ;
typedef  int /*<<< orphan*/  VP8BitWriter ;

/* Variables and functions */
 size_t CHUNK_HEADER_SIZE ; 
 scalar_t__ FUNC0 (TYPE_2__* const,TYPE_1__* const) ; 
 int FUNC1 (TYPE_2__* const) ; 
 scalar_t__ FUNC2 (TYPE_2__* const) ; 
 int FUNC3 (TYPE_1__* const) ; 
 scalar_t__ FUNC4 (TYPE_2__* const,size_t const,size_t,size_t) ; 
 size_t TAG_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ * const) ; 
 size_t FUNC6 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const) ; 
 scalar_t__ VP8X_CHUNK_SIZE ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_FILE_TOO_BIG ; 
 int VP8_FRAME_HEADER_SIZE ; 
 int FUNC8 (TYPE_1__* const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__* const,int const,int const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const* const,size_t const,TYPE_1__* const) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const* const,size_t const,TYPE_1__* const) ; 

int FUNC12(VP8Encoder* const enc) {
  WebPPicture* const pic = enc->pic_;
  VP8BitWriter* const bw = &enc->bw_;
  const int task_percent = 19;
  const int percent_per_part = task_percent / enc->num_parts_;
  const int final_percent = enc->percent_ + task_percent;
  int ok = 0;
  size_t vp8_size, pad, riff_size;
  int p;

  // Partition #0 with header and partition sizes
  ok = FUNC1(enc);
  if (!ok) return 0;

  // Compute VP8 size
  vp8_size = VP8_FRAME_HEADER_SIZE +
             FUNC6(bw) +
             3 * (enc->num_parts_ - 1);
  for (p = 0; p < enc->num_parts_; ++p) {
    vp8_size += FUNC6(enc->parts_ + p);
  }
  pad = vp8_size & 1;
  vp8_size += pad;

  // Compute RIFF size
  // At the minimum it is: "WEBPVP8 nnnn" + VP8 data size.
  riff_size = TAG_SIZE + CHUNK_HEADER_SIZE + vp8_size;
  if (FUNC2(enc)) {  // Add size for: VP8X header + data.
    riff_size += CHUNK_HEADER_SIZE + VP8X_CHUNK_SIZE;
  }
  if (enc->has_alpha_) {  // Add size for: ALPH header + data.
    const uint32_t padded_alpha_size = enc->alpha_data_size_ +
                                       (enc->alpha_data_size_ & 1);
    riff_size += CHUNK_HEADER_SIZE + padded_alpha_size;
  }
  // Sanity check.
  if (riff_size > 0xfffffffeU) {
    return FUNC8(pic, VP8_ENC_ERROR_FILE_TOO_BIG);
  }

  // Emit headers and partition #0
  {
    const uint8_t* const part0 = FUNC5(bw);
    const size_t size0 = FUNC6(bw);
    ok = ok && FUNC4(enc, size0, vp8_size, riff_size)
            && pic->writer(part0, size0, pic)
            && FUNC0(enc, pic);
    FUNC7(bw);    // will free the internal buffer.
  }

  // Token partitions
  for (p = 0; p < enc->num_parts_; ++p) {
    const uint8_t* const buf = FUNC5(enc->parts_ + p);
    const size_t size = FUNC6(enc->parts_ + p);
    if (size) ok = ok && pic->writer(buf, size, pic);
    FUNC7(enc->parts_ + p);    // will free the internal buffer.
    ok = ok && FUNC9(pic, enc->percent_ + percent_per_part,
                                  &enc->percent_);
  }

  // Padding byte
  if (ok && pad) {
    ok = FUNC3(pic);
  }

  enc->coded_size_ = (int)(CHUNK_HEADER_SIZE + riff_size);
  ok = ok && FUNC9(pic, final_percent, &enc->percent_);
  return ok;
}