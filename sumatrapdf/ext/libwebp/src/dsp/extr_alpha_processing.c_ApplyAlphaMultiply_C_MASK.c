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
 int FUNC0 (int const) ; 
 int FUNC1 (int,int const) ; 

__attribute__((used)) static void FUNC2(uint8_t* rgba, int alpha_first,
                                 int w, int h, int stride) {
  while (h-- > 0) {
    uint8_t* const rgb = rgba + (alpha_first ? 1 : 0);
    const uint8_t* const alpha = rgba + (alpha_first ? 0 : 3);
    int i;
    for (i = 0; i < w; ++i) {
      const uint32_t a = alpha[4 * i];
      if (a != 0xff) {
        const uint32_t mult = FUNC0(a);
        rgb[4 * i + 0] = FUNC1(rgb[4 * i + 0], mult);
        rgb[4 * i + 1] = FUNC1(rgb[4 * i + 1], mult);
        rgb[4 * i + 2] = FUNC1(rgb[4 * i + 2], mult);
      }
    }
    rgba += stride;
  }
}