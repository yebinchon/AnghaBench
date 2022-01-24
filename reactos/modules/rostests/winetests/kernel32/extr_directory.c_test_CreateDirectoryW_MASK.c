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
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INVALID_NAME ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int MAX_PATH ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    WCHAR tmpdir[MAX_PATH];
    BOOL ret;
    static const WCHAR empty_strW[] = { 0 };
    static const WCHAR tmp_dir_name[] = {'P','l','e','a','s','e',' ','R','e','m','o','v','e',' ','M','e',0};
    static const WCHAR dotW[] = {'.',0};
    static const WCHAR slashW[] = {'/',0};
    static const WCHAR dotdotW[] = {'.','.',0};
    static const WCHAR questionW[] = {'?',0};
    WCHAR curdir[MAX_PATH];

    ret = FUNC0(NULL, NULL);
    if (!ret && FUNC2() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC10("CreateDirectoryW is not available\n");
        return;
    }
    FUNC9(ret == FALSE && FUNC2() == ERROR_PATH_NOT_FOUND,
       "should not create NULL path ret %u err %u\n", ret, FUNC2());

    ret = FUNC0(empty_strW, NULL);
    FUNC9(ret == FALSE && FUNC2() == ERROR_PATH_NOT_FOUND,
       "should not create empty path ret %u err %u\n", ret, FUNC2());

    ret = FUNC3(tmpdir, MAX_PATH);
    FUNC9(ret < MAX_PATH, "System directory should fit into MAX_PATH\n");

    FUNC1(MAX_PATH, curdir);
    ret = FUNC6(tmpdir);
    FUNC9(ret == TRUE, "could not chdir to the System directory ret %u err %u\n", ret, FUNC2());

    ret = FUNC0(dotW, NULL);
    FUNC9(ret == FALSE && FUNC2() == ERROR_ALREADY_EXISTS,
       "should not create existing path ret %u err %u\n", ret, FUNC2());

    ret = FUNC0(dotdotW, NULL);
    FUNC9(ret == FALSE && FUNC2() == ERROR_ALREADY_EXISTS,
       "should not create existing path ret %u err %u\n", ret, FUNC2());

    FUNC4(MAX_PATH, tmpdir);
    tmpdir[3] = 0; /* truncate the path */
    ret = FUNC0(tmpdir, NULL);
    FUNC9(ret == FALSE && (FUNC2() == ERROR_ACCESS_DENIED || FUNC2() == ERROR_ALREADY_EXISTS),
       "should deny access to the drive root ret %u err %u\n", ret, FUNC2());

    FUNC4(MAX_PATH, tmpdir);
    FUNC7(tmpdir, tmp_dir_name);
    ret = FUNC0(tmpdir, NULL);
    FUNC9(ret == TRUE, "CreateDirectoryW should always succeed\n");

    ret = FUNC0(tmpdir, NULL);
    FUNC9(ret == FALSE && FUNC2() == ERROR_ALREADY_EXISTS,
       "should not create existing path ret %u err %u\n", ret, FUNC2());

    ret = FUNC5(tmpdir);
    FUNC9(ret == TRUE, "RemoveDirectoryW should always succeed\n");

    FUNC7(tmpdir, questionW);
    ret = FUNC0(tmpdir, NULL);
    FUNC9(ret == FALSE && FUNC2() == ERROR_INVALID_NAME,
       "CreateDirectoryW with ? wildcard name should fail with error 183, ret=%s error=%d\n",
       ret ? " True" : "False", FUNC2());
    ret = FUNC5(tmpdir);
    FUNC9(ret == FALSE, "RemoveDirectoryW should have failed\n");

    tmpdir[FUNC8(tmpdir) - 1] = '*';
    ret = FUNC0(tmpdir, NULL);
    FUNC9(ret == FALSE && FUNC2() == ERROR_INVALID_NAME,
       "CreateDirectoryW with * wildcard name should fail with error 183, ret=%s error=%d\n",
       ret ? " True" : "False", FUNC2());
    ret = FUNC5(tmpdir);
    FUNC9(ret == FALSE, "RemoveDirectoryW should have failed\n");
    
    FUNC4(MAX_PATH, tmpdir);
    FUNC7(tmpdir, tmp_dir_name);
    FUNC7(tmpdir, slashW);
    FUNC7(tmpdir, tmp_dir_name);
    ret = FUNC0(tmpdir, NULL);
    FUNC9(ret == FALSE && FUNC2() == ERROR_PATH_NOT_FOUND,
      "CreateDirectoryW with multiple nonexistent directories in path should fail ret %u err %u\n",
       ret, FUNC2());
    ret = FUNC5(tmpdir);
    FUNC9(ret == FALSE, "RemoveDirectoryW should have failed\n");

    FUNC6(curdir);
}