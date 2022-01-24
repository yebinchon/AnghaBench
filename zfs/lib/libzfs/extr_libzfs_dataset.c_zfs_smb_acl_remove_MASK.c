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
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_SMB_ACL_REMOVE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int
FUNC1(libzfs_handle_t *hdl, char *dataset,
    char *path, char *resource)
{
	return (FUNC0(hdl, dataset, path, ZFS_SMB_ACL_REMOVE,
	    resource, NULL));
}