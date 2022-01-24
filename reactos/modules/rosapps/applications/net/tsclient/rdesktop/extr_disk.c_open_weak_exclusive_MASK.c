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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
#define  EACCES 135 
#define  EEXIST 134 
#define  EINTR 133 
#define  EISDIR 132 
#define  ELOOP 131 
#define  ENAMETOOLONG 130 
#define  ENOENT 129 
#define  ENOTDIR 128 
 int O_EXCL ; 
 int errno ; 
 int FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,struct stat*) ; 

__attribute__((used)) static int
FUNC2(const char *pathname, int flags, mode_t mode)
{
	int ret;
	struct stat statbuf;

	ret = FUNC0(pathname, flags, mode);
	if (ret != -1 || !(flags & O_EXCL))
	{
		/* Success, or not using O_EXCL */
		return ret;
	}

	/* An error occured, and we are using O_EXCL. In case the FS
	   doesn't support O_EXCL, some kind of error will be
	   returned. Unfortunately, we don't know which one. Linux
	   2.6.8 seems to return 524, but I cannot find a documented
	   #define for this case. So, we'll return only on errors that
	   we know aren't related to O_EXCL. */
	switch (errno)
	{
		case EACCES:
		case EEXIST:
		case EINTR:
		case EISDIR:
		case ELOOP:
		case ENAMETOOLONG:
		case ENOENT:
		case ENOTDIR:
			return ret;
	}

	/* Retry with GUARDED semantics */
	if (FUNC1(pathname, &statbuf) != -1)
	{
		/* File exists */
		errno = EEXIST;
		return -1;
	}
	else
	{
		return FUNC0(pathname, flags & ~O_EXCL, mode);
	}
}