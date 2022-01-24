#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ z_blksz; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_projid; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_7__ {scalar_t__ z_projectquota_obj; int z_max_blksz; scalar_t__ z_projectobjquota_obj; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u_longlong_t ;
struct kstatfs {int f_blocks; int f_bfree; int f_bavail; int f_files; int f_ffree; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OBJACCT_PREFIX ; 
 int DMU_OBJACCT_PREFIX_LEN ; 
 scalar_t__ DMU_PROJECTUSED_OBJECT ; 
 int ENOENT ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*,int,int,int*) ; 

__attribute__((used)) static int
FUNC5(zfsvfs_t *zfsvfs, znode_t *zp, struct kstatfs *statp,
    uint32_t bshift)
{
	char buf[20 + DMU_OBJACCT_PREFIX_LEN];
	uint64_t offset = DMU_OBJACCT_PREFIX_LEN;
	uint64_t quota;
	uint64_t used;
	int err;

	FUNC2(buf, DMU_OBJACCT_PREFIX, DMU_OBJACCT_PREFIX_LEN + 1);
	err = FUNC0(zfsvfs, NULL, zp->z_projid, buf + offset, B_FALSE);
	if (err)
		return (err);

	if (zfsvfs->z_projectquota_obj == 0)
		goto objs;

	err = FUNC4(zfsvfs->z_os, zfsvfs->z_projectquota_obj,
	    buf + offset, 8, 1, &quota);
	if (err == ENOENT)
		goto objs;
	else if (err)
		return (err);

	err = FUNC4(zfsvfs->z_os, DMU_PROJECTUSED_OBJECT,
	    buf + offset, 8, 1, &used);
	if (FUNC3(err == ENOENT)) {
		uint32_t blksize;
		u_longlong_t nblocks;

		/*
		 * Quota accounting is async, so it is possible race case.
		 * There is at least one object with the given project ID.
		 */
		FUNC1(zp->z_sa_hdl, &blksize, &nblocks);
		if (FUNC3(zp->z_blksz == 0))
			blksize = zfsvfs->z_max_blksz;

		used = blksize * nblocks;
	} else if (err) {
		return (err);
	}

	statp->f_blocks = quota >> bshift;
	statp->f_bfree = (quota > used) ? ((quota - used) >> bshift) : 0;
	statp->f_bavail = statp->f_bfree;

objs:
	if (zfsvfs->z_projectobjquota_obj == 0)
		return (0);

	err = FUNC4(zfsvfs->z_os, zfsvfs->z_projectobjquota_obj,
	    buf + offset, 8, 1, &quota);
	if (err == ENOENT)
		return (0);
	else if (err)
		return (err);

	err = FUNC4(zfsvfs->z_os, DMU_PROJECTUSED_OBJECT,
	    buf, 8, 1, &used);
	if (FUNC3(err == ENOENT)) {
		/*
		 * Quota accounting is async, so it is possible race case.
		 * There is at least one object with the given project ID.
		 */
		used = 1;
	} else if (err) {
		return (err);
	}

	statp->f_files = quota;
	statp->f_ffree = (quota > used) ? (quota - used) : 0;

	return (0);
}