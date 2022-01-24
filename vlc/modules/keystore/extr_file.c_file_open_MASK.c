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
 int /*<<< orphan*/  LOCK_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC5(const char *psz_file, const char *psz_mode, FILE **pp_file)
{
    FILE *p_file = FUNC4(psz_file, psz_mode);
    if (p_file == NULL)
        return -1;

    int i_fd = FUNC1(p_file);
    if (i_fd == -1)
    {
        FUNC0(p_file);
        return -1;
    }

#ifdef HAVE_FLOCK
    if (flock(i_fd, LOCK_EX) != 0)
    {
        fclose(p_file);
        return -1;
    }
#elif defined (HAVE_FCNTL) && defined (F_SETLKW)
    if (posix_lock_fd(i_fd) != 0)
    {
        fclose(p_file);
        return -1;
    }
#endif
    *pp_file = p_file;
    return i_fd;
}