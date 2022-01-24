#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct file* v_file; } ;
typedef  TYPE_1__ vnode_t ;
typedef  scalar_t__ uio_seg_t ;
typedef  int uio_rw_t ;
struct file {int /*<<< orphan*/  f_pos; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rlim64_t ;
typedef  int /*<<< orphan*/  offset_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int FAPPEND ; 
 int UIO_READ ; 
 scalar_t__ UIO_SYSSPACE ; 
 int UIO_WRITE ; 
 int FUNC1 (struct file*,void*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct file*,void*,int,int /*<<< orphan*/ *) ; 

int
FUNC3(uio_rw_t uio, vnode_t *vp, void *addr, ssize_t len, offset_t off,
    uio_seg_t seg, int ioflag, rlim64_t x2, void *x3, ssize_t *residp)
{
	struct file *fp = vp->v_file;
	loff_t offset = off;
	int rc;

	FUNC0(uio == UIO_WRITE || uio == UIO_READ);
	FUNC0(seg == UIO_SYSSPACE);
	FUNC0((ioflag & ~FAPPEND) == 0);

	if (ioflag & FAPPEND)
		offset = fp->f_pos;

	if (uio & UIO_WRITE)
		rc = FUNC2(fp, addr, len, &offset);
	else
		rc = FUNC1(fp, addr, len, &offset);

	fp->f_pos = offset;

	if (rc < 0)
		return (-rc);

	if (residp) {
		*residp = len - rc;
	} else {
		if (rc != len)
			return (EIO);
	}

	return (0);
}