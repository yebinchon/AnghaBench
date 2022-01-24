#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  uio_seg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rootdir ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **,int,void*) ; 

int
FUNC7(const char *path, uio_seg_t seg, int flags, int mode,
    vnode_t **vpp, int x1, void *x2, vnode_t *vp, int fd)
{
	char *realpath;
	int len, rc;

	FUNC0(vp == rootdir);

	len = FUNC5(path) + 2;
	realpath = FUNC2(len, FUNC3(KM_SLEEP));
	if (!realpath)
		return (ENOMEM);

	(void) FUNC4(realpath, len, "/%s", path);
	rc = FUNC6(realpath, seg, flags, mode, vpp, x1, x2);
	FUNC1(realpath);

	return (rc);
}