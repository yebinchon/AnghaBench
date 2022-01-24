#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  format ;
struct TYPE_6__ {int num_frames; int canvas_width; int canvas_height; scalar_t__ format; int loop_count; TYPE_1__* frames; int /*<<< orphan*/  bgcolor; } ;
struct TYPE_5__ {int duration; int /*<<< orphan*/ * rgba; } ;
typedef  TYPE_2__ AnimatedImage ;

/* Variables and functions */
 scalar_t__ ANIM_GIF ; 
 scalar_t__ ANIM_WEBP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int,int,int,int*,double*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,int,...) ; 
 scalar_t__ FUNC4 (char*,int,char const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(const AnimatedImage* const img1,
                                    const AnimatedImage* const img2,
                                    int premultiply,
                                    double min_psnr) {
  int ok = 1;
  const int is_multi_frame_image = (img1->num_frames > 1);
  uint32_t i;

  ok = FUNC1(img1->canvas_width, img2->canvas_width,
                     "Canvas width mismatch") && ok;
  ok = FUNC1(img1->canvas_height, img2->canvas_height,
                     "Canvas height mismatch") && ok;
  ok = FUNC1(img1->num_frames, img2->num_frames,
                     "Frame count mismatch") && ok;
  if (!ok) return 0;  // These are fatal failures, can't proceed.

  if (is_multi_frame_image) {  // Checks relevant for multi-frame images only.
    int max_loop_count_workaround = 0;
    // Transcodes to webp increase the gif loop count by 1 for compatibility.
    // When the gif has the maximum value the webp value will be off by one.
    if ((img1->format == ANIM_GIF && img1->loop_count == 65536 &&
         img2->format == ANIM_WEBP && img2->loop_count == 65535) ||
        (img1->format == ANIM_WEBP && img1->loop_count == 65535 &&
         img2->format == ANIM_GIF && img2->loop_count == 65536)) {
      max_loop_count_workaround = 1;
    }
    ok = (max_loop_count_workaround ||
          FUNC1(img1->loop_count, img2->loop_count,
                        "Loop count mismatch")) && ok;
    ok = FUNC0(img1->bgcolor, img2->bgcolor,
                                premultiply) && ok;
  }

  for (i = 0; i < img1->num_frames; ++i) {
    // Pixel-by-pixel comparison.
    const uint8_t* const rgba1 = img1->frames[i].rgba;
    const uint8_t* const rgba2 = img2->frames[i].rgba;
    int max_diff;
    double psnr;
    if (is_multi_frame_image) {  // Check relevant for multi-frame images only.
      const char format[] = "Frame #%d, duration mismatch";
      char tmp[sizeof(format) + 8];
      ok = ok && (FUNC4(tmp, sizeof(tmp), format, i) >= 0);
      ok = ok && FUNC1(img1->frames[i].duration,
                               img2->frames[i].duration, tmp);
    }
    FUNC2(rgba1, rgba2, img1->canvas_width, img1->canvas_height,
                   premultiply, &max_diff, &psnr);
    if (min_psnr > 0.) {
      if (psnr < min_psnr) {
        FUNC3(stderr, "Frame #%zu, psnr = %.2d (min_psnr = %f)\n", i,
                psnr, min_psnr);
        ok = 0;
      }
    } else {
      if (max_diff != 0) {
        FUNC3(stderr, "Frame #%zu, max pixel diff: %d\n", i, max_diff);
        ok = 0;
      }
    }
  }
  return ok;
}