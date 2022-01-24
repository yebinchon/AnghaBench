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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 

__attribute__((used)) static void
FUNC1(int vcpu, int vector, uint16_t sel, int ext)
{
	/*
	 * Bit 2 from the selector is retained as-is in the error code.
	 *
	 * Bit 1 can be safely cleared because none of the selectors
	 * encountered during task switch emulation refer to a task
	 * gate in the IDT.
	 *
	 * Bit 0 is set depending on the value of 'ext'.
	 */
	sel &= ~0x3;
	if (ext)
		sel |= 0x1;
	FUNC0(vcpu, vector, 1, sel);
}