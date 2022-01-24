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
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

zfs_handle_t *
FUNC3(libzfs_handle_t *hdl, const char *snapname)
{
	char dirname[ZFS_MAX_DATASET_NAME_LEN];
	(void) FUNC1(dirname, snapname, ZFS_MAX_DATASET_NAME_LEN);
	char *c = FUNC0(dirname, '@');
	if (c != NULL)
		*c = '\0';
	return (FUNC2(hdl, dirname, ZFS_TYPE_DATASET));
}