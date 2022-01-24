#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void) {
  FUNC0("Usage: anim_diff <image1> <image2> [options]\n");
  FUNC0("\nOptions:\n");
  FUNC0("  -dump_frames <folder> dump decoded frames in PAM format\n");
  FUNC0("  -min_psnr <float> ... minimum per-frame PSNR\n");
  FUNC0("  -raw_comparison ..... if this flag is not used, RGB is\n");
  FUNC0("                        premultiplied before comparison\n");
  FUNC0("  -max_diff <int> ..... maximum allowed difference per channel\n"
         "                        between corresponding pixels in subsequent\n"
         "                        frames\n");
  FUNC0("  -h .................. this help\n");
  FUNC0("  -version ............ print version number and exit\n");
}