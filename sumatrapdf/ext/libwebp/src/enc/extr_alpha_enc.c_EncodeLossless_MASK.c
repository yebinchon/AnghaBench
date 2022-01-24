#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int width; int height; int use_argb; int /*<<< orphan*/  argb_stride; int /*<<< orphan*/  argb; int /*<<< orphan*/ * stats; } ;
typedef  TYPE_1__ WebPPicture ;
struct TYPE_14__ {int lossless; int exact; int method; int quality; } ;
typedef  TYPE_2__ WebPConfig ;
typedef  int /*<<< orphan*/  WebPAuxStats ;
struct TYPE_15__ {int /*<<< orphan*/  error_; } ;
typedef  TYPE_3__ VP8LBitWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__* const) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,TYPE_3__* const,int /*<<< orphan*/ ) ; 
 scalar_t__ VP8_ENC_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const* const,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(const uint8_t* const data, int width, int height,
                          int effort_level,  // in [0..6] range
                          int use_quality_100, VP8LBitWriter* const bw,
                          WebPAuxStats* const stats) {
  int ok = 0;
  WebPConfig config;
  WebPPicture picture;

  FUNC6(&picture);
  picture.width = width;
  picture.height = height;
  picture.use_argb = 1;
  picture.stats = stats;
  if (!FUNC4(&picture)) return 0;

  // Transfer the alpha values to the green channel.
  FUNC3(data, width, picture.width, picture.height,
                           picture.argb, picture.argb_stride);

  FUNC2(&config);
  config.lossless = 1;
  // Enable exact, or it would alter RGB values of transparent alpha, which is
  // normally OK but not here since we are not encoding the input image but  an
  // internal encoding-related image containing necessary exact information in
  // RGB channels.
  config.exact = 1;
  config.method = effort_level;  // impact is very small
  // Set a low default quality for encoding alpha. Ensure that Alpha quality at
  // lower methods (3 and below) is less than the threshold for triggering
  // costly 'BackwardReferencesTraceBackwards'.
  // If the alpha quality is set to 100 and the method to 6, allow for a high
  // lossless quality to trigger the cruncher.
  config.quality =
      (use_quality_100 && effort_level == 6) ? 100 : 8.f * effort_level;
  FUNC7(config.quality >= 0 && config.quality <= 100.f);

  // TODO(urvang): Temporary fix to avoid generating images that trigger
  // a decoder bug related to alpha with color cache.
  // See: https://code.google.com/p/webp/issues/detail?id=239
  // Need to re-enable this later.
  ok = (FUNC1(&config, &picture, bw, 0 /*use_cache*/) == VP8_ENC_OK);
  FUNC5(&picture);
  ok = ok && !bw->error_;
  if (!ok) {
    FUNC0(bw);
    return 0;
  }
  return 1;
}