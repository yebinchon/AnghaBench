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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(FILE *outFile, char *sw, char *arg, char *desc)
{
    int changed =0;

    if (arg)
    {
        if (FUNC1(arg,"") != 0)
        {
            if (FUNC1(arg,KDBG_ESC_OFF) == 0)
            {
                if (*sw)
                    changed = 1;
                *sw = '\0';
            }
            else if (FUNC1(arg, sw) != 0)
            {
                FUNC2(sw, arg);
                changed = 1;
            }
        }
    }
    if (desc)
    {
        FUNC0(outFile, "%s is \"%s\" (%s)\n", desc, sw, changed ? "changed":"unchanged");
        if (!arg)
            FUNC0(outFile, "(readonly)\n");
    }

    return changed;
}