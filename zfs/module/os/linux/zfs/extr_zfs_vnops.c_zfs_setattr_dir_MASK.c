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
struct TYPE_14__ {scalar_t__ z_projid; int z_pflags; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_15__ {int /*<<< orphan*/ * z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_dirlock_t ;
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_16__ {int za_integer_length; int za_num_integers; scalar_t__ za_name; } ;
typedef  TYPE_3__ zap_attribute_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uid ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
typedef  int /*<<< orphan*/  sa_bulk_attr_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  gid ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ENOENT ; 
 int ENXIO ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  ZEXISTS ; 
 int ZFS_PROJID ; 
 struct inode* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC23 (int /*<<< orphan*/ **,TYPE_1__*,char*,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (struct inode*) ; 
 int FUNC26 (struct inode*) ; 

__attribute__((used)) static int
FUNC27(znode_t *dzp)
{
	struct inode	*dxip = FUNC8(dzp);
	struct inode	*xip = NULL;
	zfsvfs_t	*zfsvfs = FUNC0(dxip);
	objset_t	*os = zfsvfs->z_os;
	zap_cursor_t	zc;
	zap_attribute_t	zap;
	zfs_dirlock_t	*dl;
	znode_t		*zp;
	dmu_tx_t	*tx = NULL;
	uint64_t	uid, gid;
	sa_bulk_attr_t	bulk[4];
	int		count;
	int		err;

	FUNC21(&zc, os, dzp->z_id);
	while ((err = FUNC22(&zc, &zap)) == 0) {
		count = 0;
		if (zap.za_integer_length != 8 || zap.za_num_integers != 1) {
			err = ENXIO;
			break;
		}

		err = FUNC23(&dl, dzp, (char *)zap.za_name, &zp,
		    ZEXISTS, NULL, NULL);
		if (err == ENOENT)
			goto next;
		if (err)
			break;

		xip = FUNC8(zp);
		if (FUNC2(xip->i_uid) == FUNC2(dxip->i_uid) &&
		    FUNC1(xip->i_gid) == FUNC1(dxip->i_gid) &&
		    zp->z_projid == dzp->z_projid)
			goto next;

		tx = FUNC12(os);
		if (!(zp->z_pflags & ZFS_PROJID))
			FUNC13(tx, zp->z_sa_hdl, B_TRUE);
		else
			FUNC13(tx, zp->z_sa_hdl, B_FALSE);

		err = FUNC10(tx, TXG_WAIT);
		if (err)
			break;

		FUNC16(&dzp->z_lock);

		if (FUNC2(xip->i_uid) != FUNC2(dxip->i_uid)) {
			xip->i_uid = dxip->i_uid;
			uid = FUNC26(dxip);
			FUNC3(bulk, count, FUNC7(zfsvfs), NULL,
			    &uid, sizeof (uid));
		}

		if (FUNC1(xip->i_gid) != FUNC1(dxip->i_gid)) {
			xip->i_gid = dxip->i_gid;
			gid = FUNC25(dxip);
			FUNC3(bulk, count, FUNC5(zfsvfs), NULL,
			    &gid, sizeof (gid));
		}

		if (zp->z_projid != dzp->z_projid) {
			if (!(zp->z_pflags & ZFS_PROJID)) {
				zp->z_pflags |= ZFS_PROJID;
				FUNC3(bulk, count,
				    FUNC4(zfsvfs), NULL, &zp->z_pflags,
				    sizeof (zp->z_pflags));
			}

			zp->z_projid = dzp->z_projid;
			FUNC3(bulk, count, FUNC6(zfsvfs),
			    NULL, &zp->z_projid, sizeof (zp->z_projid));
		}

		FUNC17(&dzp->z_lock);

		if (FUNC15(count > 0)) {
			err = FUNC18(zp->z_sa_hdl, bulk, count, tx);
			FUNC11(tx);
		} else {
			FUNC9(tx);
		}
		tx = NULL;
		if (err != 0 && err != ENOENT)
			break;

next:
		if (xip) {
			FUNC14(xip);
			xip = NULL;
			FUNC24(dl);
		}
		FUNC19(&zc);
	}

	if (tx)
		FUNC9(tx);
	if (xip) {
		FUNC14(xip);
		FUNC24(dl);
	}
	FUNC20(&zc);

	return (err == ENOENT ? 0 : err);
}