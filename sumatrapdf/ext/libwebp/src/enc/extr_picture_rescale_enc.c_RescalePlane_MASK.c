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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  rescaler_t ;
typedef  int /*<<< orphan*/  WebPRescaler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ * const) ; 

__attribute__((used)) static void FUNC3(const uint8_t* src,
                         int src_width, int src_height, int src_stride,
                         uint8_t* dst,
                         int dst_width, int dst_height, int dst_stride,
                         rescaler_t* const work,
                         int num_channels) {
  WebPRescaler rescaler;
  int y = 0;
  FUNC2(&rescaler, src_width, src_height,
                   dst, dst_width, dst_height, dst_stride,
                   num_channels, work);
  while (y < src_height) {
    y += FUNC1(&rescaler, src_height - y,
                            src + y * src_stride, src_stride);
    FUNC0(&rescaler);
  }
}