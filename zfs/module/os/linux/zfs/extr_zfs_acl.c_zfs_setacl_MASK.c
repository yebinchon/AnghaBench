#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_23__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int z_pflags; int /*<<< orphan*/  z_acl_lock; int /*<<< orphan*/  z_lock; TYPE_3__* z_acl_cached; int /*<<< orphan*/  z_is_sa; int /*<<< orphan*/  z_sa_hdl; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_27__ {scalar_t__ z_version; scalar_t__ z_fuid_dirty; int /*<<< orphan*/  z_os; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_fuid_info_t ;
struct TYPE_28__ {int z_hints; scalar_t__ z_acl_bytes; } ;
typedef  TYPE_3__ zfs_acl_t ;
struct TYPE_29__ {scalar_t__ vsa_mask; } ;
typedef  TYPE_4__ vsecattr_t ;
typedef  scalar_t__ ulong_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_26__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_WRITE_ACL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  DMU_OBJECT_END ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  EPERM ; 
 int ERESTART ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_NOWAIT ; 
 int V4_ACL_WIDE_FLAGS ; 
 scalar_t__ VSA_ACE ; 
 scalar_t__ VSA_ACECNT ; 
 int VSA_ACE_ACLFLAGS ; 
 scalar_t__ ZFS_ACE_SPACE ; 
 scalar_t__ ZFS_ACL_VERSION_INITIAL ; 
 int ZFS_IMMUTABLE ; 
 scalar_t__ ZPL_VERSION_FUID ; 
 TYPE_23__* FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int FUNC15 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_3__**) ; 
 int FUNC23 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (TYPE_1__*) ; 

int
FUNC25(znode_t *zp, vsecattr_t *vsecp, boolean_t skipaclchk, cred_t *cr)
{
	zfsvfs_t	*zfsvfs = FUNC3(zp);
	zilog_t		*zilog = zfsvfs->z_log;
	ulong_t		mask = vsecp->vsa_mask & (VSA_ACE | VSA_ACECNT);
	dmu_tx_t	*tx;
	int		error;
	zfs_acl_t	*aclp;
	zfs_fuid_info_t	*fuidp = NULL;
	boolean_t	fuid_dirtied;
	uint64_t	acl_obj;

	if (mask == 0)
		return (FUNC1(ENOSYS));

	if (zp->z_pflags & ZFS_IMMUTABLE)
		return (FUNC1(EPERM));

	if ((error = FUNC23(zp, ACE_WRITE_ACL, 0, skipaclchk, cr)))
		return (error);

	error = FUNC22(zfsvfs, FUNC2(zp)->i_mode, vsecp, cr, &fuidp,
	    &aclp);
	if (error)
		return (error);

	/*
	 * If ACL wide flags aren't being set then preserve any
	 * existing flags.
	 */
	if (!(vsecp->vsa_mask & VSA_ACE_ACLFLAGS)) {
		aclp->z_hints |=
		    (zp->z_pflags & V4_ACL_WIDE_FLAGS);
	}
top:
	FUNC12(&zp->z_acl_lock);
	FUNC12(&zp->z_lock);

	tx = FUNC7(zfsvfs->z_os);

	FUNC9(tx, zp->z_sa_hdl, B_TRUE);

	fuid_dirtied = zfsvfs->z_fuid_dirty;
	if (fuid_dirtied)
		FUNC19(zfsvfs, tx);

	/*
	 * If old version and ACL won't fit in bonus and we aren't
	 * upgrading then take out necessary DMU holds
	 */

	if ((acl_obj = FUNC16(zp)) != 0) {
		if (zfsvfs->z_version >= ZPL_VERSION_FUID &&
		    FUNC24(zp) <= ZFS_ACL_VERSION_INITIAL) {
			FUNC8(tx, acl_obj, 0,
			    DMU_OBJECT_END);
			FUNC10(tx, DMU_NEW_OBJECT, 0,
			    aclp->z_acl_bytes);
		} else {
			FUNC10(tx, acl_obj, 0, aclp->z_acl_bytes);
		}
	} else if (!zp->z_is_sa && aclp->z_acl_bytes > ZFS_ACE_SPACE) {
		FUNC10(tx, DMU_NEW_OBJECT, 0, aclp->z_acl_bytes);
	}

	FUNC21(tx, zp);
	error = FUNC5(tx, TXG_NOWAIT);
	if (error) {
		FUNC13(&zp->z_acl_lock);
		FUNC13(&zp->z_lock);

		if (error == ERESTART) {
			FUNC11(tx);
			FUNC4(tx);
			goto top;
		}
		FUNC4(tx);
		FUNC14(aclp);
		return (error);
	}

	error = FUNC15(zp, aclp, cr, tx);
	FUNC0(error == 0);
	FUNC0(zp->z_acl_cached == NULL);
	zp->z_acl_cached = aclp;

	if (fuid_dirtied)
		FUNC18(zfsvfs, tx);

	FUNC20(zilog, tx, zp, vsecp, fuidp);

	if (fuidp)
		FUNC17(fuidp);
	FUNC6(tx);

	FUNC13(&zp->z_lock);
	FUNC13(&zp->z_acl_lock);

	return (error);
}