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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 scalar_t__ curbuf_lock ; 

int
FUNC3()
{
    if (curbuf_lock > 0)
    {
	FUNC0(FUNC1("E788: Not allowed to edit another buffer now"));
	return TRUE;
    }
    return FUNC2();
}