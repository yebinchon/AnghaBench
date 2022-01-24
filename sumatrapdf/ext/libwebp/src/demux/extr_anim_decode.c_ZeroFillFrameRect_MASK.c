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

/* Variables and functions */
 int NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(uint8_t* buf, int buf_stride, int x_offset,
                              int y_offset, int width, int height) {
  int j;
  FUNC0(width * NUM_CHANNELS <= buf_stride);
  buf += y_offset * buf_stride + x_offset * NUM_CHANNELS;
  for (j = 0; j < height; ++j) {
    FUNC1(buf, 0, width * NUM_CHANNELS);
    buf += buf_stride;
  }
}