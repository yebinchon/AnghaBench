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
 int /*<<< orphan*/  MNT_FORCE ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void
FUNC2(const char *snapname)
{
	if (FUNC0(snapname, '@') == NULL)
		return;

	(void) FUNC1((char *)snapname, MNT_FORCE);
}