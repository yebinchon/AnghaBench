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
struct chmFile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHM_ENUMERATE_ALL ; 
 int /*<<< orphan*/  _print_ui ; 
 int /*<<< orphan*/  FUNC0 (struct chmFile*) ; 
 int /*<<< orphan*/  FUNC1 (struct chmFile*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct chmFile* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(int c, char **v)
{
    struct chmFile *h;
    int i;

    if (c < 2)
    {
        FUNC4(stderr, "%s <chmfile> [dir] [dir] ...\n", v[0]);
        FUNC3(1);
    }

    h = FUNC2(v[1]);
    if (h == NULL)
    {
        FUNC4(stderr, "failed to open %s\n", v[1]);
        FUNC3(1);
    }

    if (c < 3)
    {
        FUNC5("/:\n");
        FUNC5(" spc    start   length   type\t\t\tname\n");
        FUNC5(" ===    =====   ======   ====\t\t\t====\n");
		
        if (! FUNC1(h,
                                "/",
                                CHM_ENUMERATE_ALL,
                                _print_ui,
                                NULL))
            FUNC5("   *** ERROR ***\n");
    }
    else
    {
        for (i=2; i<c; i++)
        {
            FUNC5("%s:\n", v[i]);
            FUNC5(" spc    start   length   name\n");
            FUNC5(" ===    =====   ======   ====\n");

            if (! FUNC1(h,
                                    v[i],
                                    CHM_ENUMERATE_ALL,
                                    _print_ui,
                                    NULL))
            FUNC5("   *** ERROR ***\n");
        }
    }

    FUNC0(h);

    return 0;
}