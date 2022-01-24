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
struct TYPE_3__ {int /*<<< orphan*/  v_fd; } ;
typedef  TYPE_1__ vnode_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct stat64 {int /*<<< orphan*/  st_size; } ;
struct _buf {scalar_t__ _fd; } ;

/* Variables and functions */
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,struct stat64*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int
FUNC2(struct _buf *file, uint64_t *size)
{
	struct stat64 st;
	vnode_t *vp = (vnode_t *)file->_fd;

	if (FUNC0(vp->v_fd, &st) == -1) {
		FUNC1(vp);
		return (errno);
	}
	*size = st.st_size;
	return (0);
}