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
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {unsigned long uio_iovcnt; int uio_loffset; size_t uio_resid; size_t uio_skip; int /*<<< orphan*/  uio_limit; int /*<<< orphan*/  uio_segflg; struct iovec const* uio_iov; int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
typedef  TYPE_2__ uio_t ;
typedef  int /*<<< orphan*/  uio_seg_t ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAXOFFSET_T ; 
 int O_APPEND ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC4(struct inode *ip, const struct iovec *iovp, size_t count,
    unsigned long nr_segs, loff_t *ppos, uio_seg_t segment, int flags,
    cred_t *cr, size_t skip)
{
	ssize_t wrote;
	uio_t uio = { 0 , 0 };
	int error;
	fstrans_cookie_t cookie;

	if (flags & O_APPEND)
		*ppos = FUNC0(ip);

	uio.uio_iov = iovp;
	uio.uio_iovcnt = nr_segs;
	uio.uio_loffset = *ppos;
	uio.uio_segflg = segment;
	uio.uio_limit = MAXOFFSET_T;
	uio.uio_resid = count;
	uio.uio_skip = skip;

	cookie = FUNC1();
	error = -FUNC3(ip, &uio, flags, cr);
	FUNC2(cookie);
	if (error < 0)
		return (error);

	wrote = count - uio.uio_resid;
	*ppos += wrote;

	return (wrote);
}