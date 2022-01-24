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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/ * rootdir ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int FUNC5 (char*,int,int,int,int /*<<< orphan*/ **,int,int) ; 

int
FUNC6(char *path, int x1, int flags, int mode, vnode_t **vpp, int x2,
    int x3, vnode_t *startvp, int fd)
{
	char *realpath = FUNC3(FUNC2(path) + 2, UMEM_NOFAIL);
	int ret;

	FUNC0(startvp == rootdir);
	(void) FUNC1(realpath, "/%s", path);

	/* fd ignored for now, need if want to simulate nbmand support */
	ret = FUNC5(realpath, x1, flags, mode, vpp, x2, x3);

	FUNC4(realpath, FUNC2(path) + 2);

	return (ret);
}