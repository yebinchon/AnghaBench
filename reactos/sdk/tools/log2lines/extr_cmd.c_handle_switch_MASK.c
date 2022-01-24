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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(FILE *outFile, int *sw, char *arg, char *desc)
{
    int changed =0;
    int x = 0;

    if (arg && (FUNC2(arg,"") != 0))
    {
        x = FUNC0(arg);
        if (x != *sw)
        {
            *sw = x;
            changed = 1;
        }
    }
    if (desc)
    {
        FUNC1(outFile, "%s is %d (%s)\n", desc, *sw, changed ? "changed":"unchanged");
        if (!arg)
            FUNC1(outFile, "(readonly)\n");
    }

    return changed;
}