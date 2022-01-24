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
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (float) ; 

__attribute__((used)) static inline int FUNC2(int b, int s)
{
	if (s < 128) {
		return b - FUNC0(FUNC0((255 - (s<<1)), b), 255 - b);
	}
	else {
		int dbd;
		if (b < 64)
			dbd = FUNC0(FUNC0((b << 4) - 3060, b) + 1020, b);
		else
			dbd = (int)FUNC1(255.0f * b);
		return b + FUNC0(((s<<1) - 255), (dbd - b));
	}
}