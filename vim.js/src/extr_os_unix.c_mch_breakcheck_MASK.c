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
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ *) ; 
 scalar_t__ TMODE_RAW ; 
 scalar_t__ curr_tmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_cmd_fd ; 

void
FUNC2()
{
    if (curr_tmode == TMODE_RAW && FUNC0(read_cmd_fd, 0L, NULL))
	FUNC1(FALSE);
}