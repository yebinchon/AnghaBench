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
typedef  int /*<<< orphan*/  zfs_onexit_t ;
typedef  int /*<<< orphan*/  minor_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZST_ONEXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 

int
FUNC4(int fd, minor_t *minorp)
{
	zfs_onexit_t *zo = NULL;
	int error;

	error = FUNC3(fd, minorp);
	if (error) {
		FUNC1(fd);
		return (error);
	}

	zo = FUNC2(*minorp, ZST_ONEXIT);
	if (zo == NULL) {
		FUNC1(fd);
		return (FUNC0(EBADF));
	}
	return (0);
}