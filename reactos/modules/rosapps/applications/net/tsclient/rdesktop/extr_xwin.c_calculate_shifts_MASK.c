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
typedef  int uint32 ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(uint32 mask, int *shift_r, int *shift_l)
{
	*shift_l = FUNC0(mask) - 1;
	mask >>= *shift_l;
	*shift_r = 8 - FUNC0(mask & ~(mask >> 1));
}