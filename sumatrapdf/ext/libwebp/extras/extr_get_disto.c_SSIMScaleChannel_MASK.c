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
typedef  unsigned int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,int,int,int,int,int) ; 
 double FUNC1 (unsigned int* const,int,unsigned int* const,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int* const) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(uint8_t* src1, int stride1,
                            const uint8_t* src2, int stride2,
                            int x_stride, int w, int h, int do_scaling) {
  int x, y;
  int max = 0;
  uint8_t* const plane1 = (uint8_t*)FUNC3(2 * w * h * sizeof(*plane1));
  uint8_t* const plane2 = plane1 + w * h;
  if (plane1 == NULL) return -1;

  // extract plane
  for (y = 0; y < h; ++y) {
    for (x = 0; x < w; ++x) {
      plane1[x + y * w] = src1[x * x_stride + y * stride1];
      plane2[x + y * w] = src2[x * x_stride + y * stride2];
    }
  }
  for (y = 0; y < h; ++y) {
    for (x = 0; x < w; ++x) {
      const double ssim = FUNC1(plane1, w, plane2, w, x, y, w, h);
      int diff = (int)(255 * (1. - ssim));
      if (diff < 0) {
        diff = 0;
      } else if (diff > max) {
        max = diff;
      }
      src1[x * x_stride + y * stride1] = (diff > 255) ? 255u : (uint8_t)diff;
    }
  }
  FUNC2(plane1);

  if (do_scaling) FUNC0(src1, w, h, x_stride, stride1, max);
  return max;
}