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
 int FUNC0 (int) ; 
 int PIRQ_DIS ; 
 int PIRQ_IRQ ; 

__attribute__((used)) static bool
FUNC1(int reg)
{
	if (reg & PIRQ_DIS)
		return (false);
	return (FUNC0(reg & PIRQ_IRQ));
}