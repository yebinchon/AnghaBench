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
typedef  int /*<<< orphan*/  var ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*,...) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6 (const char *xdg_name, const char *xdg_default)
{
    char *psz_dir;
    char var[sizeof ("XDG__HOME") + FUNC5 (xdg_name)];

    /* XDG Base Directory Specification - Version 0.6 */
    FUNC4 (var, sizeof (var), "XDG_%s_HOME", xdg_name);

    const char *home = FUNC3 (var);
    if (home != NULL)
    {
        if (FUNC0 (&psz_dir, "%s/vlc", home) == -1)
            psz_dir = NULL;
        return psz_dir;
    }

    char *psz_home = FUNC1 ();
    if( psz_home == NULL
     || FUNC0( &psz_dir, "%s/%s/vlc", psz_home, xdg_default ) == -1 )
        psz_dir = NULL;
    FUNC2 (psz_home);
    return psz_dir;
}