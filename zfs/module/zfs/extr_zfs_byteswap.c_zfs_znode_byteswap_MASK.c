#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ z_acl_version; scalar_t__ z_acl_count; int /*<<< orphan*/ * z_ace_data; int /*<<< orphan*/  z_acl_size; void* z_acl_extern_obj; } ;
struct TYPE_4__ {TYPE_1__ zp_acl; void** zp_pad; void* zp_zap; void* zp_gid; void* zp_uid; void* zp_flags; void* zp_rdev; void* zp_xattr; void* zp_links; void* zp_parent; void* zp_size; void* zp_mode; void* zp_gen; void** zp_ctime; void** zp_mtime; void** zp_atime; void** zp_crtime; } ;
typedef  TYPE_2__ znode_phys_t ;
typedef  int /*<<< orphan*/  ace_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_SLOT_CNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  ZFS_ACE_SPACE ; 
 scalar_t__ ZFS_ACL_VERSION ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(void *buf, size_t size)
{
	znode_phys_t *zp = buf;

	FUNC0(size >= sizeof (znode_phys_t));

	zp->zp_crtime[0] = FUNC3(zp->zp_crtime[0]);
	zp->zp_crtime[1] = FUNC3(zp->zp_crtime[1]);
	zp->zp_atime[0] = FUNC3(zp->zp_atime[0]);
	zp->zp_atime[1] = FUNC3(zp->zp_atime[1]);
	zp->zp_mtime[0] = FUNC3(zp->zp_mtime[0]);
	zp->zp_mtime[1] = FUNC3(zp->zp_mtime[1]);
	zp->zp_ctime[0] = FUNC3(zp->zp_ctime[0]);
	zp->zp_ctime[1] = FUNC3(zp->zp_ctime[1]);
	zp->zp_gen = FUNC3(zp->zp_gen);
	zp->zp_mode = FUNC3(zp->zp_mode);
	zp->zp_size = FUNC3(zp->zp_size);
	zp->zp_parent = FUNC3(zp->zp_parent);
	zp->zp_links = FUNC3(zp->zp_links);
	zp->zp_xattr = FUNC3(zp->zp_xattr);
	zp->zp_rdev = FUNC3(zp->zp_rdev);
	zp->zp_flags = FUNC3(zp->zp_flags);
	zp->zp_uid = FUNC3(zp->zp_uid);
	zp->zp_gid = FUNC3(zp->zp_gid);
	zp->zp_zap = FUNC3(zp->zp_zap);
	zp->zp_pad[0] = FUNC3(zp->zp_pad[0]);
	zp->zp_pad[1] = FUNC3(zp->zp_pad[1]);
	zp->zp_pad[2] = FUNC3(zp->zp_pad[2]);

	zp->zp_acl.z_acl_extern_obj = FUNC3(zp->zp_acl.z_acl_extern_obj);
	zp->zp_acl.z_acl_size = FUNC2(zp->zp_acl.z_acl_size);
	zp->zp_acl.z_acl_version = FUNC1(zp->zp_acl.z_acl_version);
	zp->zp_acl.z_acl_count = FUNC1(zp->zp_acl.z_acl_count);
	if (zp->zp_acl.z_acl_version == ZFS_ACL_VERSION) {
		FUNC4((void *)&zp->zp_acl.z_ace_data[0],
		    ZFS_ACE_SPACE);
	} else {
		FUNC5((ace_t *)&zp->zp_acl.z_ace_data[0],
		    ACE_SLOT_CNT);
	}
}