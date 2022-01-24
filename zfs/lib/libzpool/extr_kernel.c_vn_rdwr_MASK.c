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
struct TYPE_3__ {int v_dump_fd; int /*<<< orphan*/  v_fd; } ;
typedef  TYPE_1__ vnode_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rlim64_t ;
typedef  scalar_t__ offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINVAL ; 
 int EIO ; 
 int SPA_MINBLOCKSHIFT ; 
 int UIO_READ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int,scalar_t__) ; 
 int FUNC3 (int,char*,int,scalar_t__) ; 
 int FUNC4 () ; 

int
FUNC5(int uio, vnode_t *vp, void *addr, ssize_t len, offset_t offset,
    int x1, int x2, rlim64_t x3, void *x4, ssize_t *residp)
{
	ssize_t rc, done = 0, split;

	if (uio == UIO_READ) {
		rc = FUNC2(vp->v_fd, addr, len, offset);
		if (vp->v_dump_fd != -1 && rc != -1) {
			int status;
			status = FUNC3(vp->v_dump_fd, addr, rc, offset);
			FUNC0(status != -1);
		}
	} else {
		/*
		 * To simulate partial disk writes, we split writes into two
		 * system calls so that the process can be killed in between.
		 */
		int sectors = len >> SPA_MINBLOCKSHIFT;
		split = (sectors > 0 ? FUNC4() % sectors : 0) <<
		    SPA_MINBLOCKSHIFT;
		rc = FUNC3(vp->v_fd, addr, split, offset);
		if (rc != -1) {
			done = rc;
			rc = FUNC3(vp->v_fd, (char *)addr + split,
			    len - split, offset + split);
		}
	}

#ifdef __linux__
	if (rc == -1 && errno == EINVAL) {
		/*
		 * Under Linux, this most likely means an alignment issue
		 * (memory or disk) due to O_DIRECT, so we abort() in order to
		 * catch the offender.
		 */
		FUNC1();
	}
#endif
	if (rc == -1)
		return (errno);

	done += rc;

	if (residp)
		*residp = len - done;
	else if (done != len)
		return (EIO);
	return (0);
}