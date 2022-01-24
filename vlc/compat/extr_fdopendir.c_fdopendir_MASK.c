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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
#define  EACCES 133 
 int EBADF ; 
 int EIO ; 
#define  ELOOP 132 
#define  EMFILE 131 
#define  ENAMETOOLONG 130 
#define  ENFILE 129 
#define  ENOENT 128 
 int ENOTDIR ; 
 int /*<<< orphan*/  F_GETFL ; 
 int O_ACCMODE ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

DIR *FUNC6 (int fd)
{
#ifdef F_GETFL
    /* Check read permission on file descriptor */
    int mode = fcntl (fd, F_GETFL);
    if (mode == -1 || (mode & O_ACCMODE) == O_WRONLY)
    {
        errno = EBADF;
        return NULL;
    }
#endif
    /* Check directory file type */
    struct stat st;
    if (FUNC3 (fd, &st))
        return NULL;

    if (!FUNC0 (st.st_mode))
    {
        errno = ENOTDIR;
        return NULL;
    }

    /* Try to open the directory through /proc where available.
     * Not all operating systems support this. Fix your libc! */
    char path[sizeof ("/proc/self/fd/") + 3 * sizeof (int)];
    FUNC5 (path, "/proc/self/fd/%u", fd);

    DIR *dir = FUNC4 (path);
    if (dir != NULL)
    {
        FUNC1 (fd);
        return dir;
    }

    /* Hide impossible errors for fdopendir() */
    switch (errno)
    {
        case EACCES:
#ifdef ELOOP
        case ELOOP:
#endif
        case ENAMETOOLONG:
        case ENOENT:
        case EMFILE:
        case ENFILE:
            errno = EIO;
    }
    return NULL;
}