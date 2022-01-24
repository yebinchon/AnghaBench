#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ z_id; int /*<<< orphan*/  z_parent_lock; int /*<<< orphan*/  z_sa_hdl; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_15__ {TYPE_1__* zl_znode; struct TYPE_15__* zl_next; int /*<<< orphan*/ * zl_rwlock; } ;
typedef  TYPE_2__ zfs_zlock_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  oidp ;
typedef  int /*<<< orphan*/  krwlock_t ;
typedef  scalar_t__ krw_t ;
struct TYPE_16__ {scalar_t__ z_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ RW_READER ; 
 scalar_t__ RW_WRITER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**) ; 
 int FUNC8 (TYPE_3__*,scalar_t__,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC9(znode_t *szp, znode_t *tdzp, znode_t *sdzp, zfs_zlock_t **zlpp)
{
	zfs_zlock_t	*zl;
	znode_t		*zp = tdzp;
	uint64_t	rootid = FUNC2(zp)->z_root;
	uint64_t	oidp = zp->z_id;
	krwlock_t	*rwlp = &szp->z_parent_lock;
	krw_t		rw = RW_WRITER;

	/*
	 * First pass write-locks szp and compares to zp->z_id.
	 * Later passes read-lock zp and compare to zp->z_parent.
	 */
	do {
		if (!FUNC5(rwlp, rw)) {
			/*
			 * Another thread is renaming in this path.
			 * Note that if we are a WRITER, we don't have any
			 * parent_locks held yet.
			 */
			if (rw == RW_READER && zp->z_id > szp->z_id) {
				/*
				 * Drop our locks and restart
				 */
				FUNC7(&zl);
				*zlpp = NULL;
				zp = tdzp;
				oidp = zp->z_id;
				rwlp = &szp->z_parent_lock;
				rw = RW_WRITER;
				continue;
			} else {
				/*
				 * Wait for other thread to drop its locks
				 */
				FUNC4(rwlp, rw);
			}
		}

		zl = FUNC3(sizeof (*zl), KM_SLEEP);
		zl->zl_rwlock = rwlp;
		zl->zl_znode = NULL;
		zl->zl_next = *zlpp;
		*zlpp = zl;

		if (oidp == szp->z_id)		/* We're a descendant of szp */
			return (FUNC1(EINVAL));

		if (oidp == rootid)		/* We've hit the top */
			return (0);

		if (rw == RW_READER) {		/* i.e. not the first pass */
			int error = FUNC8(FUNC2(zp), oidp, &zp);
			if (error)
				return (error);
			zl->zl_znode = zp;
		}
		(void) FUNC6(zp->z_sa_hdl, FUNC0(FUNC2(zp)),
		    &oidp, sizeof (oidp));
		rwlp = &zp->z_parent_lock;
		rw = RW_READER;

	} while (zp->z_id != sdzp->z_id);

	return (0);
}