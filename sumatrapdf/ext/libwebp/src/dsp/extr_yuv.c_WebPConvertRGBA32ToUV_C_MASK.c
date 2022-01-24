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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int const,int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int const,int const,int const,int) ; 
 int YUV_HALF ; 

void FUNC2(const uint16_t* rgb,
                             uint8_t* u, uint8_t* v, int width) {
  int i;
  for (i = 0; i < width; i += 1, rgb += 4) {
    const int r = rgb[0], g = rgb[1], b = rgb[2];
    u[i] = FUNC0(r, g, b, YUV_HALF << 2);
    v[i] = FUNC1(r, g, b, YUV_HALF << 2);
  }
}