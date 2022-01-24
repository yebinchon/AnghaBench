#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ z_relatime; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  uio_seg_t ;
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct file {unsigned int f_flags; TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 unsigned int FUNC7 (struct kiocb*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct iovec const*,size_t,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static ssize_t
FUNC10(struct kiocb *kiocb, const struct iovec *iovp,
    unsigned long nr_segs, size_t count, uio_seg_t seg, size_t skip)
{
	cred_t *cr = FUNC0();
	struct file *filp = kiocb->ki_filp;
	struct inode *ip = filp->f_mapping->host;
	zfsvfs_t *zfsvfs = FUNC3(FUNC2(ip));
	ssize_t read;
	unsigned int f_flags = filp->f_flags;

	f_flags |= FUNC7(kiocb);
	FUNC5(cr);
	read = FUNC9(filp->f_mapping->host, iovp, count,
	    nr_segs, &kiocb->ki_pos, seg, f_flags, cr, skip);
	FUNC4(cr);

	/*
	 * If relatime is enabled, call file_accessed() only if
	 * zfs_relatime_need_update() is true.  This is needed since datasets
	 * with inherited "relatime" property aren't necessarily mounted with
	 * MNT_RELATIME flag (e.g. after `zfs set relatime=...`), which is what
	 * relatime test in VFS by relatime_need_update() is based on.
	 */
	if (!FUNC1(ip) && zfsvfs->z_relatime) {
		if (FUNC8(ip))
			FUNC6(filp);
	} else {
		FUNC6(filp);
	}

	return (read);
}