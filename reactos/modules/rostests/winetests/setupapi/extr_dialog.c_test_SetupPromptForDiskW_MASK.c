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
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DPROMPT_BUFFERTOOSMALL ; 
 scalar_t__ DPROMPT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IDF_CHECKFIRST ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    WCHAR file[] = {'k','e','r','n','e','l','3','2','.','d','l','l','\0'};
    WCHAR title[] = {'T','e','s','t','\0'};
    WCHAR disk[] = {'T','e','s','t','d','i','s','k','\0'};
    WCHAR path[MAX_PATH];
    WCHAR buffer[MAX_PATH];
    UINT ret;
    DWORD length;

    FUNC0(path, MAX_PATH);

    FUNC4(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, title, disk, path, file, 0, IDF_CHECKFIRST, buffer, MAX_PATH-1, &length);
    FUNC5(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %u\n", ret);
    FUNC5(length == FUNC3(path)+1, "Expect length %u, got %u\n", FUNC3(path)+1, length);
    FUNC5(FUNC2(path, buffer) == 0, "Expected path %s, got %s\n", FUNC6(path), FUNC6(buffer));

    FUNC4(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, title, disk, path, file, 0, IDF_CHECKFIRST, 0, 0, &length);
    FUNC5(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %d\n", ret);
    FUNC5(length == FUNC3(path)+1, "Expect length %u, got %u\n", FUNC3(path)+1, length);

    FUNC4(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, title, disk, path, file, 0, IDF_CHECKFIRST, buffer, 1, &length);
    FUNC5(ret == DPROMPT_BUFFERTOOSMALL, "Expected DPROMPT_BUFFERTOOSMALL, got %u\n", ret);

    FUNC4(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, title, disk, path, file, 0, IDF_CHECKFIRST, buffer, FUNC3(path), &length);
    FUNC5(ret == DPROMPT_BUFFERTOOSMALL, "Expected DPROMPT_BUFFERTOOSMALL, got %u\n", ret);

    FUNC4(buffer, 0, sizeof(buffer));
    ret = FUNC1(0, title, disk, path, file, 0, IDF_CHECKFIRST, buffer, FUNC3(path)+1, &length);
    FUNC5(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %u\n", ret);
    FUNC5(length == FUNC3(path)+1, "Expect length %u, got %u\n", FUNC3(path)+1, length);
    FUNC5(FUNC2(path, buffer) == 0, "Expected path %s, got %s\n", FUNC6(path), FUNC6(buffer));
}