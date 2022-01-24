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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

void FUNC2(const uint8_t* src, int src_stride,
                   uint8_t* dst, int dst_stride, int width, int height) {
  FUNC0(src != NULL && dst != NULL);
  FUNC0(src_stride >= width && dst_stride >= width);
  while (height-- > 0) {
    FUNC1(dst, src, width);
    src += src_stride;
    dst += dst_stride;
  }
}