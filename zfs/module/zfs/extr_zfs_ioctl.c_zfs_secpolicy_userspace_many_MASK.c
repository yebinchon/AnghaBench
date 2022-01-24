#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t zc_objset_type; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t ZFS_NUM_USERQUOTA_PROPS ; 
 int /*<<< orphan*/ * userquota_perms ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
	int err = FUNC1(zc, innvl, cr);
	if (err)
		return (err);

	if (zc->zc_objset_type >= ZFS_NUM_USERQUOTA_PROPS)
		return (FUNC0(EINVAL));

	return (FUNC2(zc->zc_name,
	    userquota_perms[zc->zc_objset_type], cr));
}