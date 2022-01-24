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
typedef  int /*<<< orphan*/  u_char ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  DEFFILEMODE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC12(char *fname, struct stat *sbp, int force)
{
	int fd, needed_chmod, rval;
	u_char byte;

	/* Try regular files and directories. */
	if (!FUNC1(sbp->st_mode) && !FUNC0(sbp->st_mode)) {
		FUNC11("%s: %s", fname, FUNC9(0));
		return (1);
	}

	needed_chmod = rval = 0;
	if ((fd = FUNC6(fname, O_RDWR, 0)) == -1) {
		if (!force || FUNC2(fname, DEFFILEMODE))
			goto err;
		if ((fd = FUNC6(fname, O_RDWR, 0)) == -1)
			goto err;
		needed_chmod = 1;
	}

	if (sbp->st_size != 0) {
		if (FUNC7(fd, &byte, sizeof(byte)) != sizeof(byte))
			goto err;
		if (FUNC5(fd, (off_t)0, SEEK_SET) == -1)
			goto err;
		if (FUNC8(fd, &byte, sizeof(byte)) != sizeof(byte))
			goto err;
	} else {
		if (FUNC8(fd, &byte, sizeof(byte)) != sizeof(byte)) {
err:			rval = 1;
			FUNC10("%s", fname);
/*		} else if (ftruncate(fd, (off_t)0)) {*/
		} else if (FUNC3(fd, (off_t)0)) {
			rval = 1;
			FUNC10("%s: file modified", fname);
		}
	}

	if (FUNC4(fd) && rval != 1) {
		rval = 1;
		FUNC10("%s", fname);
	}
	if (needed_chmod && FUNC2(fname, sbp->st_mode) && rval != 1) {
		rval = 1;
		FUNC10("%s: permissions modified", fname);
	}
	return (rval);
}