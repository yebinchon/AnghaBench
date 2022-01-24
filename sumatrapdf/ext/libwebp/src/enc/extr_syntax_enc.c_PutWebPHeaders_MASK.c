#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WebPPicture ;
typedef  scalar_t__ WebPEncodingError ;
struct TYPE_7__ {int /*<<< orphan*/  profile_; scalar_t__ has_alpha_; int /*<<< orphan*/ * pic_; } ;
typedef  TYPE_1__ VP8Encoder ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const* const) ; 
 scalar_t__ FUNC1 (TYPE_1__ const* const) ; 
 scalar_t__ FUNC2 (TYPE_1__ const* const,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ * const,size_t) ; 
 scalar_t__ FUNC5 (TYPE_1__ const* const) ; 
 scalar_t__ VP8_ENC_OK ; 
 int FUNC6 (int /*<<< orphan*/ * const,scalar_t__) ; 

__attribute__((used)) static int FUNC7(const VP8Encoder* const enc, size_t size0,
                          size_t vp8_size, size_t riff_size) {
  WebPPicture* const pic = enc->pic_;
  WebPEncodingError err = VP8_ENC_OK;

  // RIFF header.
  err = FUNC2(enc, riff_size);
  if (err != VP8_ENC_OK) goto Error;

  // VP8X.
  if (FUNC0(enc)) {
    err = FUNC5(enc);
    if (err != VP8_ENC_OK) goto Error;
  }

  // Alpha.
  if (enc->has_alpha_) {
    err = FUNC1(enc);
    if (err != VP8_ENC_OK) goto Error;
  }

  // VP8 header.
  err = FUNC4(pic, vp8_size);
  if (err != VP8_ENC_OK) goto Error;

  // VP8 frame header.
  err = FUNC3(pic, enc->profile_, size0);
  if (err != VP8_ENC_OK) goto Error;

  // All OK.
  return 1;

  // Error.
 Error:
  return FUNC6(pic, err);
}