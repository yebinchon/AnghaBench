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
 int /*<<< orphan*/  TARGET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

int FUNC1(const char* appName)
{
    FUNC0("USAGE: %s libname [libname ...] [unicode]|[ansi] [loop][recurse]\n", appName);
    FUNC0("\tWhere libname(s) is one or more libraries to load.\n");
    FUNC0("\t[unicode] - perform tests using UNICODE api calls\n");
    FUNC0("\t[ansi] - perform tests using ANSI api calls\n");
    FUNC0("\t    default is %s\n", TARGET);
    FUNC0("\t[loop] - run test process in continuous loop\n");
    FUNC0("\t[recurse] - load libraries recursively rather than sequentually\n");
    FUNC0("\t[debug] - enable debug mode (unused)\n");
    FUNC0("\t[verbose] - enable verbose output (unused)\n");
    return 0;
}