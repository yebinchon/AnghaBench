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
struct passwd {char const* pw_dir; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_GETPW_R_SIZE_MAX ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct passwd*,char*,int,struct passwd**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char const*) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC5 (void)
{
    /* 1/ Try $HOME  */
    const char *home = FUNC0 ("HOME");
    if (home != NULL)
        return FUNC3 (home);
#if defined(HAVE_GETPWUID_R)
    /* 2/ Try /etc/passwd */
    long max = sysconf (_SC_GETPW_R_SIZE_MAX);
    if (max != -1)
    {
        char buf[max];
        struct passwd pwbuf, *pw;

        if (getpwuid_r (getuid (), &pwbuf, buf, sizeof (buf), &pw) == 0
          && pw != NULL)
            return strdup (pw->pw_dir);
    }
#endif
    return NULL;
}