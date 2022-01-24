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
struct TYPE_3__ {int v_fd; int v_dump_fd; int /*<<< orphan*/  v_path; int /*<<< orphan*/  v_size; } ;
typedef  TYPE_1__ vnode_t ;
struct stat64 {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int FCREAT ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int FREAD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int MAXPATHLEN ; 
 int O_CREAT ; 
 int O_DIRECT ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,struct stat64*) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*,struct stat64*) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 char* vn_dumpdir ; 

int
FUNC12(char *path, int x1, int flags, int mode, vnode_t **vpp, int x2, int x3)
{
	int fd = -1;
	int dump_fd = -1;
	vnode_t *vp;
	int old_umask = 0;
	struct stat64 st;
	int err;

	if (!(flags & FCREAT) && FUNC8(path, &st) == -1) {
		err = errno;
		return (err);
	}

	if (!(flags & FCREAT) && FUNC0(st.st_mode))
		flags |= O_DIRECT;

	if (flags & FCREAT)
		old_umask = FUNC9(0);

	/*
	 * The construct 'flags - FREAD' conveniently maps combinations of
	 * FREAD and FWRITE to the corresponding O_RDONLY, O_WRONLY, and O_RDWR.
	 */
	fd = FUNC5(path, flags - FREAD, mode);
	if (fd == -1) {
		err = errno;
		return (err);
	}

	if (flags & FCREAT)
		(void) FUNC9(old_umask);

	if (vn_dumpdir != NULL) {
		char *dumppath = FUNC11(MAXPATHLEN, UMEM_NOFAIL);
		(void) FUNC6(dumppath, MAXPATHLEN,
		    "%s/%s", vn_dumpdir, FUNC1(path));
		dump_fd = FUNC5(dumppath, O_CREAT | O_WRONLY, 0666);
		FUNC10(dumppath, MAXPATHLEN);
		if (dump_fd == -1) {
			err = errno;
			FUNC2(fd);
			return (err);
		}
	} else {
		dump_fd = -1;
	}

	if (FUNC4(fd, &st) == -1) {
		err = errno;
		FUNC2(fd);
		if (dump_fd != -1)
			FUNC2(dump_fd);
		return (err);
	}

	(void) FUNC3(fd, F_SETFD, FD_CLOEXEC);

	*vpp = vp = FUNC11(sizeof (vnode_t), UMEM_NOFAIL);

	vp->v_fd = fd;
	vp->v_size = st.st_size;
	vp->v_path = FUNC7(path);
	vp->v_dump_fd = dump_fd;

	return (0);
}