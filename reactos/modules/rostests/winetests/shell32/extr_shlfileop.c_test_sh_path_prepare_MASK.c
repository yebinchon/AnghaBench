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
typedef  int /*<<< orphan*/  UNICODE_PATH_A ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  ERROR_DIRECTORY ; 
 int /*<<< orphan*/  ERROR_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR_PATH_NOT_FOUND ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int SHPPFW_DIRCREATE ; 
 int SHPPFW_IGNOREFILENAME ; 
 int SHPPFW_NONE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  UNICODE_PATH ; 
 int /*<<< orphan*/  WC_NO_BEST_FIT_CHARS ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT res;
    CHAR path[MAX_PATH];
    CHAR UNICODE_PATH_A[MAX_PATH];
    BOOL UsedDefaultChar;

    /* directory exists, SHPPFW_NONE */
    FUNC9(path, "testdir2\0");
    res = FUNC3(0, 0, path, SHPPFW_NONE);
    FUNC8(res == S_OK, "res == 0x%08x, expected S_OK\n", res);

    /* directory exists, SHPPFW_IGNOREFILENAME */
    FUNC9(path, "testdir2\\test4.txt\0");
    res = FUNC3(0, 0, path, SHPPFW_IGNOREFILENAME);
    FUNC8(res == S_OK, "res == 0x%08x, expected S_OK\n", res);

    /* directory exists, SHPPFW_DIRCREATE */
    FUNC9(path, "testdir2\0");
    res = FUNC3(0, 0, path, SHPPFW_DIRCREATE);
    FUNC8(res == S_OK, "res == 0x%08x, expected S_OK\n", res);

    /* directory exists, SHPPFW_IGNOREFILENAME|SHPPFW_DIRCREATE */
    FUNC9(path, "testdir2\\test4.txt\0");
    res = FUNC3(0, 0, path, SHPPFW_IGNOREFILENAME|SHPPFW_DIRCREATE);
    FUNC8(res == S_OK, "res == 0x%08x, expected S_OK\n", res);
    FUNC8(!FUNC7("nonexistent\\"), "nonexistent\\ exists but shouldn't\n");

    /* file exists, SHPPFW_NONE */
    FUNC9(path, "test1.txt\0");
    res = FUNC3(0, 0, path, SHPPFW_NONE);
    FUNC8(res == FUNC1(ERROR_DIRECTORY) ||
       res == FUNC1(ERROR_PATH_NOT_FOUND) || /* WinMe */
       res == FUNC1(ERROR_INVALID_NAME), /* Vista */
       "Unexpected result : 0x%08x\n", res);

    /* file exists, SHPPFW_DIRCREATE */
    res = FUNC3(0, 0, path, SHPPFW_DIRCREATE);
    FUNC8(res == FUNC1(ERROR_DIRECTORY) ||
       res == FUNC1(ERROR_PATH_NOT_FOUND) || /* WinMe */
       res == FUNC1(ERROR_INVALID_NAME), /* Vista */
       "Unexpected result : 0x%08x\n", res);

    /* file exists, SHPPFW_NONE, trailing \ */
    FUNC9(path, "test1.txt\\\0");
    res = FUNC3(0, 0, path, SHPPFW_NONE);
    FUNC8(res == FUNC1(ERROR_DIRECTORY) ||
       res == FUNC1(ERROR_PATH_NOT_FOUND) || /* WinMe */
       res == FUNC1(ERROR_INVALID_NAME), /* Vista */
       "Unexpected result : 0x%08x\n", res);

    /* relative path exists, SHPPFW_DIRCREATE */
    res = FUNC3(0, 0, ".\\testdir2", SHPPFW_DIRCREATE);
    FUNC8(res == S_OK, "res == 0x%08x, expected S_OK\n", res);

    /* relative path doesn't exist, SHPPFW_DIRCREATE -- Windows does not create the directory in this case */
    res = FUNC3(0, 0, ".\\testdir2\\test4.txt", SHPPFW_DIRCREATE);
    FUNC8(res == FUNC1(ERROR_PATH_NOT_FOUND), "res == 0x%08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\n", res);
    FUNC8(!FUNC7(".\\testdir2\\test4.txt\\"), ".\\testdir2\\test4.txt\\ exists but shouldn't\n");

    /* directory doesn't exist, SHPPFW_NONE */
    FUNC9(path, "nonexistent\0");
    res = FUNC3(0, 0, path, SHPPFW_NONE);
    FUNC8(res == FUNC1(ERROR_PATH_NOT_FOUND), "res == 0x%08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\n", res);

    /* directory doesn't exist, SHPPFW_IGNOREFILENAME */
    FUNC9(path, "nonexistent\\notreal\0");
    res = FUNC3(0, 0, path, SHPPFW_IGNOREFILENAME);
    FUNC8(res == FUNC1(ERROR_PATH_NOT_FOUND), "res == 0x%08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\n", res);
    FUNC8(!FUNC7("nonexistent\\notreal"), "nonexistent\\notreal exists but shouldn't\n");
    FUNC8(!FUNC7("nonexistent\\"), "nonexistent\\ exists but shouldn't\n");

    /* directory doesn't exist, SHPPFW_IGNOREFILENAME|SHPPFW_DIRCREATE */
    FUNC9(path, "testdir2\\test4.txt\\\0");
    res = FUNC3(0, 0, path, SHPPFW_IGNOREFILENAME|SHPPFW_DIRCREATE);
    FUNC8(res == S_OK, "res == 0x%08x, expected S_OK\n", res);
    FUNC8(FUNC7("testdir2\\test4.txt\\"), "testdir2\\test4.txt doesn't exist but should\n");

    /* nested directory doesn't exist, SHPPFW_DIRCREATE */
    FUNC9(path, "nonexistent\\notreal\0");
    res = FUNC3(0, 0, path, SHPPFW_DIRCREATE);
    FUNC8(res == S_OK, "res == 0x%08x, expected S_OK\n", res);
    FUNC8(FUNC7("nonexistent\\notreal"), "nonexistent\\notreal doesn't exist but should\n");

    /* SHPPFW_ASKDIRCREATE, SHPPFW_NOWRITECHECK, and SHPPFW_MEDIACHECKONLY are untested */

    FUNC5(0xdeadbeef);
    UsedDefaultChar = FALSE;
    if (FUNC6(CP_ACP, WC_NO_BEST_FIT_CHARS, UNICODE_PATH, -1, UNICODE_PATH_A, sizeof(UNICODE_PATH_A), NULL, &UsedDefaultChar) == 0)
    {
        FUNC10("Could not convert Unicode path name to multibyte (%d)\n", FUNC0());
        return;
    }
    if (UsedDefaultChar)
    {
        FUNC10("Could not find unique multibyte representation for directory name using default codepage\n");
        return;
    }

    /* unicode directory doesn't exist, SHPPFW_NONE */
    FUNC2(UNICODE_PATH_A);
    res = FUNC4(0, 0, UNICODE_PATH, SHPPFW_NONE);
    FUNC8(res == FUNC1(ERROR_PATH_NOT_FOUND), "res == %08x, expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND)\n", res);
    FUNC8(!FUNC7(UNICODE_PATH_A), "unicode path was created but shouldn't be\n");
    FUNC2(UNICODE_PATH_A);

    /* unicode directory doesn't exist, SHPPFW_DIRCREATE */
    res = FUNC4(0, 0, UNICODE_PATH, SHPPFW_DIRCREATE);
    FUNC8(res == S_OK, "res == %08x, expected S_OK\n", res);
    FUNC8(FUNC7(UNICODE_PATH_A), "unicode path should've been created\n");

    /* unicode directory exists, SHPPFW_NONE */
    res = FUNC4(0, 0, UNICODE_PATH, SHPPFW_NONE);
    FUNC8(res == S_OK, "ret == %08x, expected S_OK\n", res);

    /* unicode directory exists, SHPPFW_DIRCREATE */
    res = FUNC4(0, 0, UNICODE_PATH, SHPPFW_DIRCREATE);
    FUNC8(res == S_OK, "ret == %08x, expected S_OK\n", res);
    FUNC2(UNICODE_PATH_A);
}