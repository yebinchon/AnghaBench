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
 size_t FUNC0 (unsigned char,int) ; 
 int /*<<< orphan*/ * get1_tab_1 ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(unsigned char *dp, unsigned char *sp, int w, int n)
{
	int w3 = w >> 3;
	int x;

	for (x = 0; x < w3; x++)
	{
		FUNC1(dp, get1_tab_1[*sp++], 8);
		dp += 8;
	}
	x = x << 3;
	if (x < w)
		FUNC1(dp, get1_tab_1[FUNC0(*sp, w - x)], w - x);
}