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
typedef  char WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_FILE_EXISTS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*,char const*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    WCHAR temp_path[MAX_PATH];
    WCHAR source[MAX_PATH], dest[MAX_PATH];
    static const WCHAR prefix[] = {'p','f','x',0};
    DWORD ret;

    ret = FUNC4(MAX_PATH, temp_path);
    if (ret == 0 && FUNC2() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC6("GetTempPathW is not available\n");
        return;
    }
    FUNC5(ret != 0, "GetTempPathW error %d\n", FUNC2());
    FUNC5(ret < MAX_PATH, "temp path should fit into MAX_PATH\n");

    ret = FUNC3(temp_path, prefix, 0, source);
    FUNC5(ret != 0, "GetTempFileNameW error %d\n", FUNC2());

    ret = FUNC3(temp_path, prefix, 0, dest);
    FUNC5(ret != 0, "GetTempFileNameW error %d\n", FUNC2());

    ret = FUNC0(source, dest, TRUE);
    FUNC5(!ret && FUNC2() == ERROR_FILE_EXISTS,
       "CopyFileW: unexpected error %d\n", FUNC2());

    ret = FUNC0(source, dest, FALSE);
    FUNC5(ret, "CopyFileW: error %d\n", FUNC2());

    ret = FUNC1(source);
    FUNC5(ret, "DeleteFileW: error %d\n", FUNC2());
    ret = FUNC1(dest);
    FUNC5(ret, "DeleteFileW: error %d\n", FUNC2());
}