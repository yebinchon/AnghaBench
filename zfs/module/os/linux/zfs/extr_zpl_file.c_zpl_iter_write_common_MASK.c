#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uio_seg_t ;
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct file {unsigned int f_flags; TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  cred_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct iovec const*,size_t,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static ssize_t
FUNC5(struct kiocb *kiocb, const struct iovec *iovp,
    unsigned long nr_segs, size_t count, uio_seg_t seg, size_t skip)
{
	cred_t *cr = FUNC0();
	struct file *filp = kiocb->ki_filp;
	ssize_t wrote;
	unsigned int f_flags = filp->f_flags;

	f_flags |= FUNC3(kiocb);
	FUNC2(cr);
	wrote = FUNC4(filp->f_mapping->host, iovp, count,
	    nr_segs, &kiocb->ki_pos, seg, f_flags, cr, skip);
	FUNC1(cr);

	return (wrote);
}