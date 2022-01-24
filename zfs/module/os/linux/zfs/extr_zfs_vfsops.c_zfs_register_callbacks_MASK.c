#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {void* vfs_nbmand; scalar_t__ vfs_do_nbmand; void* vfs_relatime; scalar_t__ vfs_do_relatime; void* vfs_atime; scalar_t__ vfs_do_atime; void* vfs_xattr; scalar_t__ vfs_do_xattr; void* vfs_devices; scalar_t__ vfs_do_devices; void* vfs_exec; scalar_t__ vfs_do_exec; void* vfs_setuid; scalar_t__ vfs_do_setuid; void* vfs_readonly; void* vfs_do_readonly; int /*<<< orphan*/ * z_os; struct TYPE_22__* vfs_data; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  TYPE_1__ vfs_t ;
struct dsl_dataset {int dummy; } ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ZFS_PROP_ACLINHERIT ; 
 int /*<<< orphan*/  ZFS_PROP_ACLTYPE ; 
 int /*<<< orphan*/  ZFS_PROP_ATIME ; 
 int /*<<< orphan*/  ZFS_PROP_DEVICES ; 
 int /*<<< orphan*/  ZFS_PROP_EXEC ; 
 int /*<<< orphan*/  ZFS_PROP_NBMAND ; 
 int /*<<< orphan*/  ZFS_PROP_READONLY ; 
 int /*<<< orphan*/  ZFS_PROP_RECORDSIZE ; 
 int /*<<< orphan*/  ZFS_PROP_RELATIME ; 
 int /*<<< orphan*/  ZFS_PROP_SETUID ; 
 int /*<<< orphan*/  ZFS_PROP_SNAPDIR ; 
 int /*<<< orphan*/  ZFS_PROP_VSCAN ; 
 int /*<<< orphan*/  ZFS_PROP_XATTR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,void*) ; 
 struct dsl_dataset* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dsl_dataset*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_1__*,void*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct dsl_dataset*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(vfs_t *vfsp)
{
	struct dsl_dataset *ds = NULL;
	objset_t *os = NULL;
	zfsvfs_t *zfsvfs = NULL;
	int error = 0;

	FUNC0(vfsp);
	zfsvfs = vfsp->vfs_data;
	FUNC0(zfsvfs);
	os = zfsvfs->z_os;

	/*
	 * The act of registering our callbacks will destroy any mount
	 * options we may have.  In order to enable temporary overrides
	 * of mount options, we stash away the current values and
	 * restore them after we register the callbacks.
	 */
	if (FUNC22(zfsvfs) || !FUNC19(FUNC8(os))) {
		vfsp->vfs_do_readonly = B_TRUE;
		vfsp->vfs_readonly = B_TRUE;
	}

	/*
	 * Register property callbacks.
	 *
	 * It would probably be fine to just check for i/o error from
	 * the first prop_register(), but I guess I like to go
	 * overboard...
	 */
	ds = FUNC6(os);
	FUNC9(FUNC7(os), FTAG);
	error = FUNC11(ds,
	    FUNC23(ZFS_PROP_ATIME), atime_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_RELATIME), relatime_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_XATTR), xattr_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_RECORDSIZE), blksz_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_READONLY), readonly_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_DEVICES), devices_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_SETUID), setuid_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_EXEC), exec_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_SNAPDIR), snapdir_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_ACLTYPE), acltype_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_ACLINHERIT), acl_inherit_changed_cb,
	    zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_VSCAN), vscan_changed_cb, zfsvfs);
	error = error ? error : FUNC11(ds,
	    FUNC23(ZFS_PROP_NBMAND), nbmand_changed_cb, zfsvfs);
	FUNC10(FUNC7(os), FTAG);
	if (error)
		goto unregister;

	/*
	 * Invoke our callbacks to restore temporary mount options.
	 */
	if (vfsp->vfs_do_readonly)
		FUNC15(zfsvfs, vfsp->vfs_readonly);
	if (vfsp->vfs_do_setuid)
		FUNC17(zfsvfs, vfsp->vfs_setuid);
	if (vfsp->vfs_do_exec)
		FUNC13(zfsvfs, vfsp->vfs_exec);
	if (vfsp->vfs_do_devices)
		FUNC5(zfsvfs, vfsp->vfs_devices);
	if (vfsp->vfs_do_xattr)
		FUNC21(zfsvfs, vfsp->vfs_xattr);
	if (vfsp->vfs_do_atime)
		FUNC3(zfsvfs, vfsp->vfs_atime);
	if (vfsp->vfs_do_relatime)
		FUNC16(zfsvfs, vfsp->vfs_relatime);
	if (vfsp->vfs_do_nbmand)
		FUNC14(zfsvfs, vfsp->vfs_nbmand);

	return (0);

unregister:
	FUNC12(ds, zfsvfs);
	return (error);
}