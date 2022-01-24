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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int ENOTSUP ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int consin_fd ; 
 int consout_fd ; 
 int errno ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(char *path)
{
	struct stat sb;
	int err;
	int fd;

	/*
	 * Allow stdio to be passed in so that the same string
	 * can be used for the bhyveload console and bhyve com-port
	 * parameters
	 */
	if (!FUNC3(path, "stdio"))
		return (0);

	err = FUNC2(path, &sb);
	if (err == 0) {
		if (!FUNC0(sb.st_mode))
			err = ENOTSUP;
		else {
			fd = FUNC1(path, O_RDWR | O_NONBLOCK);
			if (fd < 0)
				err = errno;
			else
				consin_fd = consout_fd = fd;
		}
	}

	return (err);
}