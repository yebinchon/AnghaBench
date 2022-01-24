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
 char* CP_FMT ; 
 int LINESIZE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

int
FUNC5(char *src, char *dst)
{
    char Line[LINESIZE];

    FUNC3(Line, CP_FMT, src, dst);
    FUNC1(2, "Executing: %s\n", Line);
    FUNC2(dst);
    if (FUNC0(dst))
    {
        FUNC1(0, "Cannot remove dst %s before copy\n", dst);
        return 1;
    }
    if (FUNC4(Line) < 0)
    {
        FUNC1(0, "Cannot copy %s to %s\n", src, dst);
        FUNC1(1, "Failed to execute: '%s'\n", Line);
        return 2;
    }

    if (!FUNC0(dst))
    {
        FUNC1(0, "Dst %s does not exist after copy\n", dst);
        return 2;
    }
    return 0;
}