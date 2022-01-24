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
 char* KDBG_ESC_OFF ; 
 int /*<<< orphan*/  LINESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(FILE *outFile, char **psw, char *arg, char *desc)
{
    int changed =0;

    if (arg)
    {
        if (FUNC3(arg,"") != 0)
        {
            if (FUNC3(arg,KDBG_ESC_OFF) == 0)
            {
                if (*psw)
                    changed = 1;
                FUNC1(*psw);
                *psw = NULL;
            }
            else
            {
                if (!*psw)
                {
                    *psw = FUNC2(LINESIZE);
                    **psw = '\0';
                }

                if (FUNC3(arg, *psw) != 0)
                {
                    FUNC4(*psw, arg);
                    changed = 1;
                }
            }
        }
    }
    if (desc)
    {
        FUNC0(outFile, "%s is \"%s\" (%s)\n", desc, *psw, changed ? "changed":"unchanged");
        if (!arg)
            FUNC0(outFile, "(readonly)\n");
    }

    return changed;
}