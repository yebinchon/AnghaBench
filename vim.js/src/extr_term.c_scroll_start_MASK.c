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
 scalar_t__ NUL ; 
 scalar_t__* T_VE ; 
 scalar_t__* T_VS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2()
{
    if (*T_VS != NUL)
    {
	FUNC0(T_VS);
	FUNC0(T_VE);
	FUNC1();			/* don't know where cursor is now */
    }
}