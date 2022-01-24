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
 int FUNC0 (char*) ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 scalar_t__ FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,char*) ; 

__attribute__((used)) static void FUNC5(const char *testdir)
{
    int ret;
    char buf[MAX_PATH];

    FUNC4(buf, "%s\\%s", testdir, "TesT");
    ret = FUNC0(buf);
    FUNC3(ret || (FUNC1() == ERROR_PATH_NOT_FOUND),
       "Failed to rm %s, error %d\n", buf, FUNC1());
    FUNC2(testdir);
}