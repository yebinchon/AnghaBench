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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  VLC_VAR_BOOL ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

bool FUNC8 (vlc_object_t *obj)
{
    char *str;

    /* Check for short help option */
    if (FUNC5 (obj, "help"))
    {
        FUNC0 (obj, "help");
        return true;
    }

    /* Check for version option */
    if (FUNC5 (obj, "version"))
    {
        FUNC2();
        return true;
    }

    /* Check for help on modules */
    str = FUNC6 (obj, "module");
    if (str != NULL)
    {
        FUNC0 (obj, str);
        FUNC3 (str);
        return true;
    }

    /* Check for full help option */
    if (FUNC5 (obj, "full-help"))
    {
        FUNC4 (obj, "help-verbose", VLC_VAR_BOOL);
        FUNC7 (obj, "help-verbose", true);
        FUNC0 (obj, "full-help");
        return true;
    }

    /* Check for long help option */
    if (FUNC5 (obj, "longhelp"))
    {
        FUNC0 (obj, "longhelp");
        return true;
    }

    /* Check for module list option */
    if (FUNC5 (obj, "list"))
    {
        FUNC1 (obj, false );
        return true;
    }

    if (FUNC5 (obj, "list-verbose"))
    {
        FUNC1 (obj, true);
        return true;
    }

    return false;
}