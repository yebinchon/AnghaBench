#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ z_acl_inherit; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct TYPE_17__ {TYPE_1__* z_ops; int /*<<< orphan*/  z_hints; int /*<<< orphan*/  z_acl_bytes; int /*<<< orphan*/  z_acl_count; int /*<<< orphan*/  z_acl; int /*<<< orphan*/  z_version; } ;
typedef  TYPE_3__ zfs_acl_t ;
struct TYPE_18__ {scalar_t__ z_size; int /*<<< orphan*/  z_ace_count; void* z_acldata; } ;
typedef  TYPE_4__ zfs_acl_node_t ;
typedef  int /*<<< orphan*/  umode_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int boolean_t ;
struct TYPE_15__ {size_t (* ace_size ) (void*) ;size_t (* ace_data ) (void*,void**) ;scalar_t__ (* ace_flags_get ) (void*) ;int /*<<< orphan*/  (* ace_flags_set ) (void*,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ ACE_DIRECTORY_INHERIT_ACE ; 
 scalar_t__ ACE_EVERYONE ; 
 int /*<<< orphan*/  ACE_EXECUTE ; 
 scalar_t__ ACE_FILE_INHERIT_ACE ; 
 scalar_t__ ACE_INHERITED_ACE ; 
 scalar_t__ ACE_INHERIT_ONLY_ACE ; 
 scalar_t__ ACE_NO_PROPAGATE_INHERIT_ACE ; 
 scalar_t__ ACE_OWNER ; 
 scalar_t__ ALLOW ; 
 scalar_t__ ALL_INHERIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_FALSE ; 
 int B_TRUE ; 
 scalar_t__ OWNING_GROUP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ ZFS_ACL_DISCARD ; 
 scalar_t__ ZFS_ACL_NOALLOW ; 
 scalar_t__ ZFS_ACL_PASSTHROUGH ; 
 scalar_t__ ZFS_ACL_PASSTHROUGH_X ; 
 int /*<<< orphan*/  ZFS_INHERIT_ACE ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 size_t FUNC7 (void*) ; 
 size_t FUNC8 (void*,void**) ; 
 size_t FUNC9 (void*,void**) ; 
 scalar_t__ FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ ) ; 
 void* FUNC16 (TYPE_3__*,void*,int*,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 TYPE_4__* FUNC17 (size_t) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,void*,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static zfs_acl_t *
FUNC21(zfsvfs_t *zfsvfs, umode_t obj_mode, zfs_acl_t *paclp,
    uint64_t mode, boolean_t *need_chmod)
{
	void		*pacep;
	void		*acep;
	zfs_acl_node_t  *aclnode;
	zfs_acl_t	*aclp = NULL;
	uint64_t	who;
	uint32_t	access_mask;
	uint16_t	iflags, newflags, type;
	size_t		ace_size;
	void		*data1, *data2;
	size_t		data1sz, data2sz;
	boolean_t	vdir = FUNC1(obj_mode);
	boolean_t	vreg = FUNC3(obj_mode);
	boolean_t	passthrough, passthrough_x, noallow;

	passthrough_x =
	    zfsvfs->z_acl_inherit == ZFS_ACL_PASSTHROUGH_X;
	passthrough = passthrough_x ||
	    zfsvfs->z_acl_inherit == ZFS_ACL_PASSTHROUGH;
	noallow =
	    zfsvfs->z_acl_inherit == ZFS_ACL_NOALLOW;

	*need_chmod = B_TRUE;
	pacep = NULL;
	aclp = FUNC15(paclp->z_version);
	if (zfsvfs->z_acl_inherit == ZFS_ACL_DISCARD || FUNC2(obj_mode))
		return (aclp);
	while ((pacep = FUNC16(paclp, pacep, &who,
	    &access_mask, &iflags, &type))) {

		/*
		 * don't inherit bogus ACEs
		 */
		if (!FUNC18(type, iflags))
			continue;

		if (noallow && type == ALLOW)
			continue;

		ace_size = aclp->z_ops->ace_size(pacep);

		if (!FUNC14(obj_mode, iflags))
			continue;

		/*
		 * If owner@, group@, or everyone@ inheritable
		 * then zfs_acl_chmod() isn't needed.
		 */
		if (passthrough &&
		    ((iflags & (ACE_OWNER|ACE_EVERYONE)) ||
		    ((iflags & OWNING_GROUP) ==
		    OWNING_GROUP)) && (vreg || (vdir && (iflags &
		    ACE_DIRECTORY_INHERIT_ACE)))) {
			*need_chmod = B_FALSE;
		}

		if (!vdir && passthrough_x &&
		    ((mode & (S_IXUSR | S_IXGRP | S_IXOTH)) == 0)) {
			access_mask &= ~ACE_EXECUTE;
		}

		aclnode = FUNC17(ace_size);
		FUNC6(&aclp->z_acl, aclnode);
		acep = aclnode->z_acldata;

		FUNC20(aclp, acep, access_mask, type,
		    who, iflags|ACE_INHERITED_ACE);

		/*
		 * Copy special opaque data if any
		 */
		if ((data1sz = paclp->z_ops->ace_data(pacep, &data1)) != 0) {
			FUNC4((data2sz = aclp->z_ops->ace_data(acep,
			    &data2)) == data1sz);
			FUNC5(data1, data2, data2sz);
		}

		aclp->z_acl_count++;
		aclnode->z_ace_count++;
		aclp->z_acl_bytes += aclnode->z_size;
		newflags = aclp->z_ops->ace_flags_get(acep);

		if (vdir)
			aclp->z_hints |= ZFS_INHERIT_ACE;

		if ((iflags & ACE_NO_PROPAGATE_INHERIT_ACE) || !vdir) {
			newflags &= ~ALL_INHERIT;
			aclp->z_ops->ace_flags_set(acep,
			    newflags|ACE_INHERITED_ACE);
			FUNC19(zfsvfs, aclp, acep);
			continue;
		}

		FUNC0(vdir);

		/*
		 * If only FILE_INHERIT is set then turn on
		 * inherit_only
		 */
		if ((iflags & (ACE_FILE_INHERIT_ACE |
		    ACE_DIRECTORY_INHERIT_ACE)) == ACE_FILE_INHERIT_ACE) {
			newflags |= ACE_INHERIT_ONLY_ACE;
			aclp->z_ops->ace_flags_set(acep,
			    newflags|ACE_INHERITED_ACE);
		} else {
			newflags &= ~ACE_INHERIT_ONLY_ACE;
			aclp->z_ops->ace_flags_set(acep,
			    newflags|ACE_INHERITED_ACE);
		}
	}
	return (aclp);
}