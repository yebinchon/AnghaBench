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

__attribute__((used)) static void FUNC0(unsigned int mask, int *shift, int *bits)
{
	*bits = 0;
	*shift = 0;
	if (mask) {
		while ((mask & 1) == 0) {
			*shift += 1;
			mask >>= 1;
		}
		while ((mask & 1) == 1) {
			*bits += 1;
			mask >>= 1;
		}
	}
}