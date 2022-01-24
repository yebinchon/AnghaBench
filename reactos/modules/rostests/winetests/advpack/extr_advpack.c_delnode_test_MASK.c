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
typedef  int UINT ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  char CHAR ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ E_FAIL ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int FUNC4 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    HRESULT hr;
    HANDLE hn;
    CHAR currDir[MAX_PATH];
    UINT currDirLen;

    /* Native DelNode apparently does not support relative paths, so we use
       absolute paths for testing */
    currDirLen = FUNC4(FUNC0(currDir), currDir);
    FUNC5(currDirLen > 0 && currDirLen < FUNC0(currDir));

    if(currDir[currDirLen - 1] == '\\')
        currDir[--currDirLen] = 0;

    /* Simple tests; these should fail. */
    hr = FUNC8(NULL, 0);
    FUNC7 (hr == E_FAIL, "DelNode called with NULL pathname should return E_FAIL\n");
    hr = FUNC8("", 0);
    FUNC7 (hr == E_FAIL, "DelNode called with empty pathname should return E_FAIL\n");

    /* Test deletion of a file. */
    hn = FUNC3("DelNodeTestFile1", GENERIC_WRITE, 0, NULL,
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC5(hn != INVALID_HANDLE_VALUE);
    FUNC1(hn);
    hr = FUNC8(FUNC6(currDir, "\\DelNodeTestFile1"), 0);
    FUNC7 (hr == S_OK, "DelNode failed deleting a single file\n");
    currDir[currDirLen] = '\0';

    /* Test deletion of an empty directory. */
    FUNC2("DelNodeTestDir", NULL);
    hr = FUNC8(FUNC6(currDir, "\\DelNodeTestDir"), 0);
    FUNC7 (hr == S_OK, "DelNode failed deleting an empty directory\n");
    currDir[currDirLen] = '\0';

    /* Test deletion of a directory containing one file. */
    FUNC2("DelNodeTestDir", NULL);
    hn = FUNC3("DelNodeTestDir\\DelNodeTestFile1", GENERIC_WRITE, 0, NULL,
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC5(hn != INVALID_HANDLE_VALUE);
    FUNC1(hn);
    hr = FUNC8(FUNC6(currDir, "\\DelNodeTestDir"), 0);
    FUNC7 (hr == S_OK, "DelNode failed deleting a directory containing one file\n");
    currDir[currDirLen] = '\0';

    /* Test deletion of a directory containing multiple files. */
    FUNC2("DelNodeTestDir", NULL);
    hn = FUNC3("DelNodeTestDir\\DelNodeTestFile1", GENERIC_WRITE, 0, NULL,
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC5(hn != INVALID_HANDLE_VALUE);
    FUNC1(hn);
    hn = FUNC3("DelNodeTestDir\\DelNodeTestFile2", GENERIC_WRITE, 0, NULL,
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC5(hn != INVALID_HANDLE_VALUE);
    FUNC1(hn);
    hn = FUNC3("DelNodeTestDir\\DelNodeTestFile3", GENERIC_WRITE, 0, NULL,
        CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC5(hn != INVALID_HANDLE_VALUE);
    FUNC1(hn);
    hr = FUNC8(FUNC6(currDir, "\\DelNodeTestDir"), 0);
    FUNC7 (hr == S_OK, "DelNode failed deleting a directory containing multiple files\n");
}