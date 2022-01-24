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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DPROMPT_BUFFERTOOSMALL ; 
 int /*<<< orphan*/  DPROMPT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IDF_CHECKFIRST ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    char file[] = "kernel32.dll";
    char path[MAX_PATH];
    char buffer[MAX_PATH];
    UINT ret;
    DWORD length;

    FUNC0(path, MAX_PATH);

    FUNC2(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, buffer, sizeof(buffer) - 1, &length);
    FUNC3(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %u\n", ret);
    FUNC3(length == FUNC5(path)+1, "Expect length %u, got %u\n", (DWORD)FUNC5(path) + 1, length);
    FUNC3(FUNC4(path, buffer) == 0, "Expected path %s, got %s\n", path, buffer);

    FUNC2(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, 0, 0, &length);
    FUNC3(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %d\n", ret);
    FUNC3(length == FUNC5(path)+1, "Expect length %u, got %u\n", (DWORD)FUNC5(path) + 1, length);

    FUNC2(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, buffer, 1, &length);
    FUNC3(ret == DPROMPT_BUFFERTOOSMALL, "Expected DPROMPT_BUFFERTOOSMALL, got %u\n", ret);

    FUNC2(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, buffer, FUNC5(path), &length);
    FUNC3(ret == DPROMPT_BUFFERTOOSMALL, "Expected DPROMPT_BUFFERTOOSMALL, got %u\n", ret);

    FUNC2(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, buffer, FUNC5(path)+1, &length);
    FUNC3(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %u\n", ret);
    FUNC3(length == FUNC5(path)+1, "Expect length %u, got %u\n", (DWORD)FUNC5(path) + 1, length);
    FUNC3(FUNC4(path, buffer) == 0, "Expected path %s, got %s\n", path, buffer);
}