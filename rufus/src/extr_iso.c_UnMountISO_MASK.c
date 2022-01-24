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
 int /*<<< orphan*/  DETACH_VIRTUAL_DISK_FLAG_NONE ; 
 int /*<<< orphan*/  DetachVirtualDisk ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VirtDisk ; 
 int /*<<< orphan*/ * mounted_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* physical_path ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	FUNC0(DetachVirtualDisk, VirtDisk);

	if ((mounted_handle == NULL) || (mounted_handle == INVALID_HANDLE_VALUE))
		goto out;

	FUNC1(mounted_handle, DETACH_VIRTUAL_DISK_FLAG_NONE, 0);
	FUNC2(mounted_handle);
out:
	physical_path[0] = 0;
}