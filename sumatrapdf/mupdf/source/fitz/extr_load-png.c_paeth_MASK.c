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

__attribute__((used)) static inline int FUNC0(int a, int b, int c)
{
	/* The definitions of ac and bc are correct, not a typo. */
	int ac = b - c, bc = a - c, abcc = ac + bc;
	int pa = (ac < 0 ? -ac : ac);
	int pb = (bc < 0 ? -bc : bc);
	int pc = (abcc < 0 ? -abcc : abcc);
	return pa <= pb && pa <= pc ? a : pb <= pc ? b : c;
}