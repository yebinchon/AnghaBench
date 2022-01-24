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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  bootfs ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZPOOL_PROP_BOOTFS ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

boolean_t
FUNC2(zpool_handle_t *zhp)
{
	char bootfs[ZFS_MAX_DATASET_NAME_LEN];

	return (FUNC1(zhp, ZPOOL_PROP_BOOTFS, bootfs,
	    sizeof (bootfs), NULL, B_FALSE) == 0 && FUNC0(bootfs, "-",
	    sizeof (bootfs)) != 0);
}