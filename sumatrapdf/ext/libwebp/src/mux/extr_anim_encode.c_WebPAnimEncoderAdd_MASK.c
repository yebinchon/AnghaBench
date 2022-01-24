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
typedef  scalar_t__ uint32_t ;
struct TYPE_19__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  use_argb; void* error_code; } ;
typedef  TYPE_2__ WebPPicture ;
struct TYPE_20__ {int lossless; } ;
typedef  TYPE_3__ WebPConfig ;
struct TYPE_18__ {scalar_t__ verbose; } ;
struct TYPE_21__ {int prev_timestamp_; int first_timestamp_; int got_null_frame_; scalar_t__ canvas_width_; scalar_t__ canvas_height_; int curr_canvas_copy_modified_; TYPE_2__* curr_canvas_; TYPE_1__ options_; int /*<<< orphan*/  is_first_frame_; } ;
typedef  TYPE_4__ WebPAnimEncoder ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 scalar_t__ const MAX_DURATION ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 void* VP8_ENC_ERROR_INVALID_CONFIGURATION ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(WebPAnimEncoder* enc, WebPPicture* frame, int timestamp,
                       const WebPConfig* encoder_config) {
  WebPConfig config;
  int ok;

  if (enc == NULL) {
    return 0;
  }
  FUNC5(enc);

  if (!enc->is_first_frame_) {
    // Make sure timestamps are non-decreasing (integer wrap-around is OK).
    const uint32_t prev_frame_duration =
        (uint32_t)timestamp - enc->prev_timestamp_;
    if (prev_frame_duration >= MAX_DURATION) {
      if (frame != NULL) {
        frame->error_code = VP8_ENC_ERROR_INVALID_CONFIGURATION;
      }
      FUNC4(enc, "ERROR adding frame: timestamps must be non-decreasing");
      return 0;
    }
    if (!FUNC3(enc, (int)prev_frame_duration)) {
      return 0;
    }
  } else {
    enc->first_timestamp_ = timestamp;
  }

  if (frame == NULL) {  // Special: last call.
    enc->got_null_frame_ = 1;
    enc->prev_timestamp_ = timestamp;
    return 1;
  }

  if (frame->width != enc->canvas_width_ ||
      frame->height != enc->canvas_height_) {
    frame->error_code = VP8_ENC_ERROR_INVALID_CONFIGURATION;
    FUNC4(enc, "ERROR adding frame: Invalid frame dimensions");
    return 0;
  }

  if (!frame->use_argb) {  // Convert frame from YUV(A) to ARGB.
    if (enc->options_.verbose) {
      FUNC10(stderr, "WARNING: Converting frame from YUV(A) to ARGB format; "
              "this incurs a small loss.\n");
    }
    if (!FUNC7(frame)) {
      FUNC4(enc, "ERROR converting frame from YUV(A) to ARGB");
      return 0;
    }
  }

  if (encoder_config != NULL) {
    if (!FUNC8(encoder_config)) {
      FUNC4(enc, "ERROR adding frame: Invalid WebPConfig");
      return 0;
    }
    config = *encoder_config;
  } else {
    FUNC6(&config);
    config.lossless = 1;
  }
  FUNC9(enc->curr_canvas_ == NULL);
  enc->curr_canvas_ = frame;  // Store reference.
  FUNC9(enc->curr_canvas_copy_modified_ == 1);
  FUNC1(enc);

  ok = FUNC0(enc, &config) && FUNC2(enc);

  enc->curr_canvas_ = NULL;
  enc->curr_canvas_copy_modified_ = 1;
  if (ok) {
    enc->prev_timestamp_ = timestamp;
  }
  return ok;
}