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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int,int const) ; 

__attribute__((used)) static void FUNC1(uint32_t* const src,
                                    const uint32_t* const dst, int num_pixels) {
  int i;
  for (i = 0; i < num_pixels; ++i) {
    const uint8_t src_alpha = (src[i] >> 24) & 0xff;
    if (src_alpha != 0xff) {
      src[i] = FUNC0(src[i], dst[i]);
    }
  }
}