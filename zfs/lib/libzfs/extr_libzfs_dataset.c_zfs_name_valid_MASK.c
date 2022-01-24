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
typedef  scalar_t__ zfs_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ ZFS_TYPE_POOL ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

int
FUNC2(const char *name, zfs_type_t type)
{
	if (type == ZFS_TYPE_POOL)
		return (FUNC1(NULL, B_FALSE, name));
	return (FUNC0(NULL, name, type, B_FALSE));
}