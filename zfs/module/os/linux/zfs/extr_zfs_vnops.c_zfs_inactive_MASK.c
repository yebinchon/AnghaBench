#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ z_unlinked; int /*<<< orphan*/  z_lock; scalar_t__ z_atime_dirty; int /*<<< orphan*/ * z_sa_hdl; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_9__ {int /*<<< orphan*/  z_teardown_inactive_lock; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct inode {int /*<<< orphan*/  i_atime; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  atime ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

void
FUNC17(struct inode *ip)
{
	znode_t	*zp = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);
	uint64_t atime[2];
	int error;
	int need_unlock = 0;

	/* Only read lock if we haven't already write locked, e.g. rollback */
	if (!FUNC2(&zfsvfs->z_teardown_inactive_lock)) {
		need_unlock = 1;
		FUNC12(&zfsvfs->z_teardown_inactive_lock, RW_READER);
	}
	if (zp->z_sa_hdl == NULL) {
		if (need_unlock)
			FUNC13(&zfsvfs->z_teardown_inactive_lock);
		return;
	}

	if (zp->z_atime_dirty && zp->z_unlinked == B_FALSE) {
		dmu_tx_t *tx = FUNC8(zfsvfs->z_os);

		FUNC9(tx, zp->z_sa_hdl, B_FALSE);
		FUNC15(tx, zp);
		error = FUNC6(tx, TXG_WAIT);
		if (error) {
			FUNC5(tx);
		} else {
			FUNC4(&ip->i_atime, atime);
			FUNC10(&zp->z_lock);
			(void) FUNC14(zp->z_sa_hdl, FUNC3(zfsvfs),
			    (void *)&atime, sizeof (atime), tx);
			zp->z_atime_dirty = B_FALSE;
			FUNC11(&zp->z_lock);
			FUNC7(tx);
		}
	}

	FUNC16(zp);
	if (need_unlock)
		FUNC13(&zfsvfs->z_teardown_inactive_lock);
}