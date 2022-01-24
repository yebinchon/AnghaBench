#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int z_pflags; int /*<<< orphan*/  z_acl_lock; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_17__ {scalar_t__ z_version; int z_acl_bytes; int /*<<< orphan*/  z_acl; scalar_t__ z_acl_count; } ;
typedef  TYPE_2__ zfs_acl_t ;
struct TYPE_18__ {void* z_size; int /*<<< orphan*/  z_acldata; } ;
typedef  TYPE_3__ zfs_acl_node_t ;
struct TYPE_19__ {int vsa_mask; int vsa_aclcnt; size_t vsa_aclentsz; int /*<<< orphan*/  vsa_aclflags; void* vsa_aclentp; } ;
typedef  TYPE_4__ vsecattr_t ;
typedef  int ulong_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int caddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  ace_t ;
typedef  int /*<<< orphan*/  ace_object_t ;

/* Variables and functions */
#define  ACE_ACCESS_ALLOWED_OBJECT_ACE_TYPE 131 
#define  ACE_ACCESS_DENIED_OBJECT_ACE_TYPE 130 
 int /*<<< orphan*/  ACE_READ_ACL ; 
#define  ACE_SYSTEM_ALARM_OBJECT_ACE_TYPE 129 
#define  ACE_SYSTEM_AUDIT_OBJECT_ACE_TYPE 128 
 int /*<<< orphan*/  ACL_AUTO_INHERIT ; 
 int /*<<< orphan*/  ACL_DEFAULTED ; 
 int /*<<< orphan*/  ACL_PROTECTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VSA_ACE ; 
 int VSA_ACECNT ; 
 int VSA_ACE_ACLFLAGS ; 
 int VSA_ACE_ALLTYPES ; 
 int ZFS_ACL_AUTO_INHERIT ; 
 int ZFS_ACL_DEFAULTED ; 
 int ZFS_ACL_OBJ_ACE ; 
 int ZFS_ACL_PROTECTED ; 
 scalar_t__ ZFS_ACL_VERSION_FUID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (TYPE_2__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,void*,int) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC13(znode_t *zp, vsecattr_t *vsecp, boolean_t skipaclchk, cred_t *cr)
{
	zfs_acl_t	*aclp;
	ulong_t		mask;
	int		error;
	int 		count = 0;
	int		largeace = 0;

	mask = vsecp->vsa_mask & (VSA_ACE | VSA_ACECNT |
	    VSA_ACE_ACLFLAGS | VSA_ACE_ALLTYPES);

	if (mask == 0)
		return (FUNC1(ENOSYS));

	if ((error = FUNC12(zp, ACE_READ_ACL, 0, skipaclchk, cr)))
		return (error);

	FUNC7(&zp->z_acl_lock);

	error = FUNC10(zp, B_FALSE, &aclp, B_FALSE);
	if (error != 0) {
		FUNC8(&zp->z_acl_lock);
		return (error);
	}

	/*
	 * Scan ACL to determine number of ACEs
	 */
	if ((zp->z_pflags & ZFS_ACL_OBJ_ACE) && !(mask & VSA_ACE_ALLTYPES)) {
		void *zacep = NULL;
		uint64_t who;
		uint32_t access_mask;
		uint16_t type, iflags;

		while ((zacep = FUNC9(aclp, zacep,
		    &who, &access_mask, &iflags, &type))) {
			switch (type) {
			case ACE_ACCESS_ALLOWED_OBJECT_ACE_TYPE:
			case ACE_ACCESS_DENIED_OBJECT_ACE_TYPE:
			case ACE_SYSTEM_AUDIT_OBJECT_ACE_TYPE:
			case ACE_SYSTEM_ALARM_OBJECT_ACE_TYPE:
				largeace++;
				continue;
			default:
				count++;
			}
		}
		vsecp->vsa_aclcnt = count;
	} else
		count = (int)aclp->z_acl_count;

	if (mask & VSA_ACECNT) {
		vsecp->vsa_aclcnt = count;
	}

	if (mask & VSA_ACE) {
		size_t aclsz;

		aclsz = count * sizeof (ace_t) +
		    sizeof (ace_object_t) * largeace;

		vsecp->vsa_aclentp = FUNC4(aclsz, KM_SLEEP);
		vsecp->vsa_aclentsz = aclsz;

		if (aclp->z_version == ZFS_ACL_VERSION_FUID)
			FUNC11(FUNC2(zp), aclp, cr,
			    vsecp->vsa_aclentp, !(mask & VSA_ACE_ALLTYPES));
		else {
			zfs_acl_node_t *aclnode;
			void *start = vsecp->vsa_aclentp;

			for (aclnode = FUNC5(&aclp->z_acl); aclnode;
			    aclnode = FUNC6(&aclp->z_acl, aclnode)) {
				FUNC3(aclnode->z_acldata, start,
				    aclnode->z_size);
				start = (caddr_t)start + aclnode->z_size;
			}
			FUNC0((caddr_t)start - (caddr_t)vsecp->vsa_aclentp ==
			    aclp->z_acl_bytes);
		}
	}
	if (mask & VSA_ACE_ACLFLAGS) {
		vsecp->vsa_aclflags = 0;
		if (zp->z_pflags & ZFS_ACL_DEFAULTED)
			vsecp->vsa_aclflags |= ACL_DEFAULTED;
		if (zp->z_pflags & ZFS_ACL_PROTECTED)
			vsecp->vsa_aclflags |= ACL_PROTECTED;
		if (zp->z_pflags & ZFS_ACL_AUTO_INHERIT)
			vsecp->vsa_aclflags |= ACL_AUTO_INHERIT;
	}

	FUNC8(&zp->z_acl_lock);

	return (0);
}