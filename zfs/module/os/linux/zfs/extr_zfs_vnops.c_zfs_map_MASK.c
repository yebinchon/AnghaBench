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
struct TYPE_4__ {int z_pflags; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct inode {int dummy; } ;
typedef  scalar_t__ offset_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EPERM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 scalar_t__ MAXOFFSET_T ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long VM_EXEC ; 
 unsigned long VM_READ ; 
 unsigned long VM_WRITE ; 
 int ZFS_APPENDONLY ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int ZFS_IMMUTABLE ; 
 int ZFS_READONLY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int
FUNC6(struct inode *ip, offset_t off, caddr_t *addrp, size_t len,
    unsigned long vm_flags)
{
	znode_t  *zp = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);

	FUNC3(zfsvfs);
	FUNC5(zp);

	if ((vm_flags & VM_WRITE) && (zp->z_pflags &
	    (ZFS_IMMUTABLE | ZFS_READONLY | ZFS_APPENDONLY))) {
		FUNC4(zfsvfs);
		return (FUNC2(EPERM));
	}

	if ((vm_flags & (VM_READ | VM_EXEC)) &&
	    (zp->z_pflags & ZFS_AV_QUARANTINED)) {
		FUNC4(zfsvfs);
		return (FUNC2(EACCES));
	}

	if (off < 0 || len > MAXOFFSET_T - off) {
		FUNC4(zfsvfs);
		return (FUNC2(ENXIO));
	}

	FUNC4(zfsvfs);
	return (0);
}