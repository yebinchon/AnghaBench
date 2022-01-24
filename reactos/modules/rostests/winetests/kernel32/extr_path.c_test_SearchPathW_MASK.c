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
typedef  int /*<<< orphan*/  pathW ;
typedef  int /*<<< orphan*/  path2W ;
typedef  int /*<<< orphan*/  buffW ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  manifest_dep ; 
 int /*<<< orphan*/  manifest_main ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char*,char const*,char const*,int,char*,char**) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void FUNC16(void)
{
    static const WCHAR testdeprelW[] = {'.','/','t','e','s','t','d','e','p','.','d','l','l',0};
    static const WCHAR testdepW[] = {'t','e','s','t','d','e','p','.','d','l','l',0};
    static const WCHAR testdep1W[] = {'t','e','s','t','d','e','p',0};
    static const WCHAR kernel32dllW[] = {'k','e','r','n','e','l','3','2','.','d','l','l',0};
    static const WCHAR kernel32W[] = {'k','e','r','n','e','l','3','2',0};
    static const WCHAR ole32W[] = {'o','l','e','3','2',0};
    static const WCHAR extW[] = {'.','e','x','t',0};
    static const WCHAR dllW[] = {'.','d','l','l',0};
    static const WCHAR fileW[] = { 0 };
    WCHAR pathW[MAX_PATH], buffW[MAX_PATH], path2W[MAX_PATH];
    WCHAR *ptrW = NULL;
    ULONG_PTR cookie;
    HANDLE handle;
    DWORD ret;

    if (!&pSearchPathW)
    {
        FUNC14("SearchPathW isn't available\n");
        return;
    }

if (0)
{
    /* NULL filename, crashes on nt4 */
    FUNC12(pathW, NULL, NULL, sizeof(buffW)/sizeof(WCHAR), buffW, &ptrW);
}

    FUNC2(pathW, sizeof(pathW)/sizeof(WCHAR));

    /* empty filename */
    FUNC3(0xdeadbeef);
    ret = FUNC12(pathW, fileW, NULL, sizeof(buffW)/sizeof(WCHAR), buffW, &ptrW);
    FUNC8(ret == 0, "Expected failure, got %d\n", ret);
    FUNC8(FUNC0() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %x\n", FUNC0());

    if (!&pActivateActCtx)
        return;

    FUNC4("testdep1.manifest", manifest_dep);
    FUNC4("main.manifest", manifest_main);

    handle = FUNC13("main.manifest");
    FUNC5("testdep1.manifest");
    FUNC5("main.manifest");

    /* search fails without active context */
    ret = FUNC12(NULL, testdepW, NULL, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(ret == 0, "got %d\n", ret);

    ret = FUNC12(NULL, kernel32dllW, NULL, sizeof(path2W)/sizeof(WCHAR), path2W, NULL);
    FUNC8(ret && ret == FUNC7(path2W), "got %d\n", ret);

    /* full path, name without 'dll' extension */
    FUNC1(pathW, sizeof(pathW)/sizeof(WCHAR));
    ret = FUNC12(pathW, kernel32W, NULL, sizeof(path2W)/sizeof(WCHAR), path2W, NULL);
    FUNC8(ret == 0, "got %d\n", ret);

    FUNC2(pathW, sizeof(pathW)/sizeof(WCHAR));

    ret = FUNC9(handle, &cookie);
    FUNC8(ret, "failed to activate context, %u\n", FUNC0());

    /* works when activated */
    ret = FUNC12(NULL, testdepW, NULL, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(ret && ret == FUNC7(buffW), "got %d\n", ret);

    ret = FUNC12(NULL, testdepW, extW, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(ret && ret == FUNC7(buffW), "got %d\n", ret);

    ret = FUNC12(NULL, testdep1W, dllW, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(ret && ret == FUNC7(buffW), "got %d\n", ret);

    ret = FUNC12(NULL, testdep1W, extW, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(!ret, "got %d\n", ret);

    /* name contains path */
    ret = FUNC12(NULL, testdeprelW, NULL, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(!ret, "got %d\n", ret);

    /* fails with specified path that doesn't contain this file */
    ret = FUNC12(pathW, testdepW, NULL, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(!ret, "got %d\n", ret);

    /* path is redirected for wellknown names too, meaning it takes precedence over normal search order */
    ret = FUNC12(NULL, kernel32dllW, NULL, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(ret && ret == FUNC7(buffW), "got %d\n", ret);
    FUNC8(FUNC6(buffW, path2W), "got wrong path %s, %s\n", FUNC15(buffW), FUNC15(path2W));

    /* path is built using on manifest file name */
    ret = FUNC12(NULL, ole32W, NULL, sizeof(buffW)/sizeof(WCHAR), buffW, NULL);
    FUNC8(ret && ret == FUNC7(buffW), "got %d\n", ret);

    ret = FUNC10(0, cookie);
    FUNC8(ret, "failed to deactivate context, %u\n", FUNC0());
    FUNC11(handle);
}