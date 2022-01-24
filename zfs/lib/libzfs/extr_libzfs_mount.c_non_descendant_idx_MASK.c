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
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  parent ;
typedef  int /*<<< orphan*/  child ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(zfs_handle_t **handles, size_t num_handles, int idx)
{
	char parent[ZFS_MAXPROPLEN];
	char child[ZFS_MAXPROPLEN];
	int i;

	FUNC1(FUNC2(handles[idx], ZFS_PROP_MOUNTPOINT, parent,
	    sizeof (parent), NULL, NULL, 0, B_FALSE) == 0);

	for (i = idx + 1; i < num_handles; i++) {
		FUNC1(FUNC2(handles[i], ZFS_PROP_MOUNTPOINT, child,
		    sizeof (child), NULL, NULL, 0, B_FALSE) == 0);
		if (!FUNC0(parent, child))
			break;
	}
	return (i);
}