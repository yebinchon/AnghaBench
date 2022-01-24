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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOSYS ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4 (void)
{
#if 0
    int fd, err;

    FILE *stream = tmpfile();
    if (stream == NULL)
        return -1;

    fd = vlc_dup(fileno(stream));
    err = errno;
    fclose(stream);
    errno = err;
    return fd;
#else /* Not currently used */
    errno = ENOSYS;
    return -1;
#endif
}