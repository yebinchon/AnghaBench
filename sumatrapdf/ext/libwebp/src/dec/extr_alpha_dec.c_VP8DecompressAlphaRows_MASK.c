#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_13__ {int width; int crop_bottom; int const crop_top; int crop_left; int crop_right; } ;
typedef  TYPE_1__ VP8Io ;
struct TYPE_14__ {scalar_t__ alpha_dithering_; int /*<<< orphan*/  const* alpha_plane_; TYPE_8__* alph_dec_; scalar_t__ is_alpha_decoded_; int /*<<< orphan*/  alpha_data_size_; int /*<<< orphan*/  alpha_data_; } ;
typedef  TYPE_2__ VP8Decoder ;
struct TYPE_15__ {scalar_t__ pre_processing_; } ;

/* Variables and functions */
 scalar_t__ ALPHA_PREPROCESSED_LEVELS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const* const,int /*<<< orphan*/  const*) ; 
 TYPE_8__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,TYPE_1__ const* const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const* const,int,int,int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

const uint8_t* FUNC8(VP8Decoder* const dec,
                                      const VP8Io* const io,
                                      int row, int num_rows) {
  const int width = io->width;
  const int height = io->crop_bottom;

  FUNC7(dec != NULL && io != NULL);

  if (row < 0 || num_rows <= 0 || row + num_rows > height) {
    return NULL;    // sanity check.
  }

  if (!dec->is_alpha_decoded_) {
    if (dec->alph_dec_ == NULL) {    // Initialize decoder.
      dec->alph_dec_ = FUNC3();
      if (dec->alph_dec_ == NULL) return NULL;
      if (!FUNC4(dec, io)) goto Error;
      if (!FUNC2(dec->alph_dec_, dec->alpha_data_, dec->alpha_data_size_,
                    io, dec->alpha_plane_)) {
        goto Error;
      }
      // if we allowed use of alpha dithering, check whether it's needed at all
      if (dec->alph_dec_->pre_processing_ != ALPHA_PREPROCESSED_LEVELS) {
        dec->alpha_dithering_ = 0;   // disable dithering
      } else {
        num_rows = height - row;     // decode everything in one pass
      }
    }

    FUNC7(dec->alph_dec_ != NULL);
    FUNC7(row + num_rows <= height);
    if (!FUNC0(dec, row, num_rows)) goto Error;

    if (dec->is_alpha_decoded_) {   // finished?
      FUNC1(dec->alph_dec_);
      dec->alph_dec_ = NULL;
      if (dec->alpha_dithering_ > 0) {
        uint8_t* const alpha = dec->alpha_plane_ + io->crop_top * width
                             + io->crop_left;
        if (!FUNC6(alpha,
                                  io->crop_right - io->crop_left,
                                  io->crop_bottom - io->crop_top,
                                  width, dec->alpha_dithering_)) {
          goto Error;
        }
      }
    }
  }

  // Return a pointer to the current decoded row.
  return dec->alpha_plane_ + row * width;

 Error:
  FUNC5(dec);
  return NULL;
}