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
 int /*<<< orphan*/  system_delay_taskq ; 
 int /*<<< orphan*/  system_taskq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  zpl_fs_type ; 

void
FUNC4(void)
{
	/*
	 * we don't use outstanding because zpl_posix_acl_free might add more.
	 */
	FUNC0(system_delay_taskq);
	FUNC0(system_taskq);
	FUNC1(&zpl_fs_type);
	FUNC2();
	FUNC3();
}