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

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int FUNC0 (char**,char*,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (char*,int) ; 

__attribute__((used)) static char *FUNC5(const char *psz_dir, const char *psz_default_dir)
{
    char *psz_home = FUNC2("HOME");
    if (psz_home == NULL)
        goto fallback;

    if (psz_dir == NULL)
        return FUNC3(psz_home);

    char *psz_fullpath;
    if (FUNC0(&psz_fullpath, "%s/%s", psz_home, psz_dir) == -1)
        goto fallback;
    if (FUNC4(psz_fullpath, 0700) == -1 && errno != EEXIST)
    {
        FUNC1(psz_fullpath);
        goto fallback;
    }
    return psz_fullpath;

fallback:
    return psz_default_dir != NULL ? FUNC3(psz_default_dir) : NULL;
}