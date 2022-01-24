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
typedef  int /*<<< orphan*/  tmpdirA ;
typedef  int /*<<< orphan*/  pathA ;
typedef  int /*<<< orphan*/  path2A ;
typedef  int /*<<< orphan*/  buffA ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int MAX_PATH ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  manifest_dep ; 
 int /*<<< orphan*/  manifest_main ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (char*,char const*,char*,int,char*,char**) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static void FUNC20(void)
{
    static const CHAR testdepA[] = "testdep.dll";
    static const CHAR testdeprelA[] = "./testdep.dll";
    static const CHAR kernel32A[] = "kernel32.dll";
    static const CHAR fileA[] = "";
    CHAR pathA[MAX_PATH], buffA[MAX_PATH], path2A[MAX_PATH], path3A[MAX_PATH], curdirA[MAX_PATH];
    CHAR tmpdirA[MAX_PATH], *ptrA = NULL;
    ULONG_PTR cookie;
    HANDLE handle;
    BOOL bret;
    DWORD ret;

    if (!&pSearchPathA)
    {
        FUNC19("SearchPathA isn't available\n");
        return;
    }

    FUNC5(pathA, sizeof(pathA)/sizeof(CHAR));

    /* NULL filename */
    FUNC7(0xdeadbeef);
    ret = FUNC14(pathA, NULL, NULL, sizeof(buffA)/sizeof(CHAR), buffA, &ptrA);
    FUNC10(ret == 0, "Expected failure, got %d\n", ret);
    FUNC10(FUNC3() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %x\n", FUNC3());

    /* empty filename */
    FUNC7(0xdeadbeef);
    ret = FUNC14(pathA, fileA, NULL, sizeof(buffA)/sizeof(CHAR), buffA, &ptrA);
    FUNC10(ret == 0, "Expected failure, got %d\n", ret);
    FUNC10(FUNC3() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %x\n", FUNC3());

    if (!&pActivateActCtx)
        return;

    FUNC8("testdep1.manifest", manifest_dep);
    FUNC8("main.manifest", manifest_main);

    handle = FUNC18("main.manifest");
    FUNC9("testdep1.manifest");
    FUNC9("main.manifest");

    /* search fails without active context */
    ret = FUNC14(NULL, testdepA, NULL, sizeof(buffA)/sizeof(CHAR), buffA, NULL);
    FUNC10(ret == 0, "got %d\n", ret);

    ret = FUNC14(NULL, kernel32A, NULL, sizeof(path2A)/sizeof(CHAR), path2A, NULL);
    FUNC10(ret && ret == FUNC17(path2A), "got %d\n", ret);

    ret = FUNC11(handle, &cookie);
    FUNC10(ret, "failed to activate context, %u\n", FUNC3());

    /* works when activated */
    ret = FUNC14(NULL, testdepA, NULL, sizeof(buffA)/sizeof(CHAR), buffA, NULL);
    FUNC10(ret && ret == FUNC17(buffA), "got %d\n", ret);

    ret = FUNC14(NULL, "testdep.dll", ".ext", sizeof(buffA)/sizeof(CHAR), buffA, NULL);
    FUNC10(ret && ret == FUNC17(buffA), "got %d\n", ret);

    ret = FUNC14(NULL, "testdep", ".dll", sizeof(buffA)/sizeof(CHAR), buffA, NULL);
    FUNC10(ret && ret == FUNC17(buffA), "got %d\n", ret);

    ret = FUNC14(NULL, "testdep", ".ext", sizeof(buffA)/sizeof(CHAR), buffA, NULL);
    FUNC10(!ret, "got %d\n", ret);

    /* name contains path */
    ret = FUNC14(NULL, testdeprelA, NULL, sizeof(buffA)/sizeof(CHAR), buffA, NULL);
    FUNC10(!ret, "got %d\n", ret);

    /* fails with specified path that doesn't contain this file */
    ret = FUNC14(pathA, testdepA, NULL, sizeof(buffA)/sizeof(CHAR), buffA, NULL);
    FUNC10(!ret, "got %d\n", ret);

    /* path is redirected for wellknown names too */
    ret = FUNC14(NULL, kernel32A, NULL, sizeof(buffA)/sizeof(CHAR), buffA, NULL);
    FUNC10(ret && ret == FUNC17(buffA), "got %d\n", ret);
    FUNC10(FUNC16(buffA, path2A), "got wrong path %s, %s\n", buffA, path2A);

    ret = FUNC12(0, cookie);
    FUNC10(ret, "failed to deactivate context, %u\n", FUNC3());
    FUNC13(handle);

    /* test the search path priority of the working directory */
    FUNC4(sizeof(tmpdirA), tmpdirA);
    ret = FUNC2(MAX_PATH, curdirA);
    FUNC10(ret, "failed to obtain working directory.\n");
    FUNC15(pathA, "%s\\%s", tmpdirA, kernel32A);
    ret = FUNC14(NULL, kernel32A, NULL, sizeof(path2A)/sizeof(CHAR), path2A, NULL);
    FUNC10(ret && ret == FUNC17(path2A), "got %d\n", ret);
    bret = FUNC0(path2A, pathA, FALSE);
    FUNC10(bret != 0, "failed to copy test executable to temp directory, %u\n", FUNC3());
    FUNC15(path3A, "%s%s%s", curdirA, curdirA[FUNC17(curdirA)-1] != '\\' ? "\\" : "", kernel32A);
    bret = FUNC0(path2A, path3A, FALSE);
    FUNC10(bret != 0, "failed to copy test executable to launch directory, %u\n", FUNC3());
    bret = FUNC6(tmpdirA);
    FUNC10(bret, "failed to change working directory\n");
    ret = FUNC14(NULL, kernel32A, ".exe", sizeof(buffA), buffA, NULL);
    FUNC10(ret && ret == FUNC17(buffA), "got %d\n", ret);
    FUNC10(FUNC16(buffA, path3A) == 0, "expected %s, got %s\n", path3A, buffA);
    bret = FUNC6(curdirA);
    FUNC10(bret, "failed to reset working directory\n");
    FUNC1(path3A);
    FUNC1(pathA);
}