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
 unsigned char CSI ; 
 scalar_t__ Columns ; 
 scalar_t__ Rows ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int /*<<< orphan*/  size_set ; 
 scalar_t__ term_console ; 

void
FUNC3()
{
    if (term_console)
    {
	size_set = TRUE;
	FUNC0(CSI);
	FUNC2((long)Rows);
	FUNC0('t');
	FUNC0(CSI);
	FUNC2((long)Columns);
	FUNC0('u');
	FUNC1();
    }
}