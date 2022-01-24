#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/ * argb; int /*<<< orphan*/ * v; int /*<<< orphan*/ * u; int /*<<< orphan*/ * y; scalar_t__ use_argb; int /*<<< orphan*/ * stats; } ;
typedef  TYPE_1__ WebPPicture ;
struct TYPE_28__ {int preprocessing; float quality; int /*<<< orphan*/  exact; scalar_t__ use_sharp_yuv; int /*<<< orphan*/  lossless; } ;
typedef  TYPE_2__ WebPConfig ;
struct TYPE_29__ {int /*<<< orphan*/  use_tokens_; } ;
typedef  TYPE_3__ VP8Encoder ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_2__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_BAD_DIMENSION ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_INVALID_CONFIGURATION ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_NULL_PARAMETER ; 
 int /*<<< orphan*/  VP8_ENC_OK ; 
 scalar_t__ WEBP_MAX_DIMENSION ; 
 int /*<<< orphan*/  WEBP_YUV420 ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC19(const WebPConfig* config, WebPPicture* pic) {
  int ok = 0;
  if (pic == NULL) return 0;

  FUNC13(pic, VP8_ENC_OK);  // all ok so far
  if (config == NULL) {  // bad params
    return FUNC13(pic, VP8_ENC_ERROR_NULL_PARAMETER);
  }
  if (!FUNC17(config)) {
    return FUNC13(pic, VP8_ENC_ERROR_INVALID_CONFIGURATION);
  }
  if (pic->width <= 0 || pic->height <= 0) {
    return FUNC13(pic, VP8_ENC_ERROR_BAD_DIMENSION);
  }
  if (pic->width > WEBP_MAX_DIMENSION || pic->height > WEBP_MAX_DIMENSION) {
    return FUNC13(pic, VP8_ENC_ERROR_BAD_DIMENSION);
  }

  if (pic->stats != NULL) FUNC18(pic->stats, 0, sizeof(*pic->stats));

  if (!config->lossless) {
    VP8Encoder* enc = NULL;

    if (pic->use_argb || pic->y == NULL || pic->u == NULL || pic->v == NULL) {
      // Make sure we have YUVA samples.
      if (config->use_sharp_yuv || (config->preprocessing & 4)) {
        if (!FUNC15(pic)) {
          return 0;
        }
      } else {
        float dithering = 0.f;
        if (config->preprocessing & 2) {
          const float x = config->quality / 100.f;
          const float x2 = x * x;
          // slowly decreasing from max dithering at low quality (q->0)
          // to 0.5 dithering amplitude at high quality (q->100)
          dithering = 1.0f + (0.5f - 1.0f) * x2 * x2;
        }
        if (!FUNC14(pic, WEBP_YUV420, dithering)) {
          return 0;
        }
      }
    }

    if (!config->exact) {
      FUNC11(pic);
    }

    enc = FUNC1(config, pic);
    if (enc == NULL) return 0;  // pic->error is already set.
    // Note: each of the tasks below account for 20% in the progress report.
    ok = FUNC3(enc);

    // Analysis is done, proceed to actual coding.
    ok = ok && FUNC7(enc);   // possibly done in parallel
    if (!enc->use_tokens_) {
      ok = ok && FUNC6(enc);
    } else {
      ok = ok && FUNC8(enc);
    }
    ok = ok && FUNC4(enc);

    ok = ok && FUNC9(enc);
    FUNC2(enc);
    if (!ok) {
      FUNC5(enc);
    }
    ok &= FUNC0(enc);  // must always be called, even if !ok
  } else {
    // Make sure we have ARGB samples.
    if (pic->argb == NULL && !FUNC16(pic)) {
      return 0;
    }

    if (!config->exact) {
      FUNC12(pic);
    }

    ok = FUNC10(config, pic);  // Sets pic->error in case of problem.
  }

  return ok;
}