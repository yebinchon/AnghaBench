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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int S_IRWXO ; 
 int S_IXGRP ; 
 int S_IXUSR ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_path ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(char **cause)
{
	struct sockaddr_un	sa;
	size_t			size;
	mode_t			mask;
	int			fd, saved_errno;

	FUNC3(&sa, 0, sizeof sa);
	sa.sun_family = AF_UNIX;
	size = FUNC7(sa.sun_path, socket_path, sizeof sa.sun_path);
	if (size >= sizeof sa.sun_path) {
		errno = ENAMETOOLONG;
		goto fail;
	}
	FUNC9(sa.sun_path);

	if ((fd = FUNC5(AF_UNIX, SOCK_STREAM, 0)) == -1)
		goto fail;

	mask = FUNC8(S_IXUSR|S_IXGRP|S_IRWXO);
	if (FUNC0(fd, (struct sockaddr *)&sa, sizeof sa) == -1) {
		saved_errno = errno;
		FUNC1(fd);
		errno = saved_errno;
		goto fail;
	}
	FUNC8(mask);

	if (FUNC2(fd, 128) == -1) {
		saved_errno = errno;
		FUNC1(fd);
		errno = saved_errno;
		goto fail;
	}
	FUNC4(fd, 0);

	return (fd);

fail:
	if (cause != NULL) {
		FUNC10(cause, "error creating %s (%s)", socket_path,
		    FUNC6(errno));
	}
	return (-1);
}