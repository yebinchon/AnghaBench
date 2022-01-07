
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathW ;
typedef int path2W ;
typedef int buffW ;
typedef char WCHAR ;
typedef int ULONG_PTR ;
typedef int HANDLE ;
typedef int DWORD ;


 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int GetSystemDirectoryW (char*,int) ;
 int GetWindowsDirectoryW (char*,int) ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int create_manifest_file (char*,int ) ;
 int delete_manifest_file (char*) ;
 int lstrcmpW (char*,char*) ;
 int lstrlenW (char*) ;
 int manifest_dep ;
 int manifest_main ;
 int ok (int,char*,int,...) ;
 int pActivateActCtx (int ,int *) ;
 int pDeactivateActCtx (int ,int ) ;
 int pReleaseActCtx (int ) ;
 int pSearchPathW (char*,char const*,char const*,int,char*,char**) ;
 int test_create (char*) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_SearchPathW(void)
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
    WCHAR *ptrW = ((void*)0);
    ULONG_PTR cookie;
    HANDLE handle;
    DWORD ret;

    if (!pSearchPathW)
    {
        win_skip("SearchPathW isn't available\n");
        return;
    }

if (0)
{

    pSearchPathW(pathW, ((void*)0), ((void*)0), sizeof(buffW)/sizeof(WCHAR), buffW, &ptrW);
}

    GetWindowsDirectoryW(pathW, sizeof(pathW)/sizeof(WCHAR));


    SetLastError(0xdeadbeef);
    ret = pSearchPathW(pathW, fileW, ((void*)0), sizeof(buffW)/sizeof(WCHAR), buffW, &ptrW);
    ok(ret == 0, "Expected failure, got %d\n", ret);
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %x\n", GetLastError());

    if (!pActivateActCtx)
        return;

    create_manifest_file("testdep1.manifest", manifest_dep);
    create_manifest_file("main.manifest", manifest_main);

    handle = test_create("main.manifest");
    delete_manifest_file("testdep1.manifest");
    delete_manifest_file("main.manifest");


    ret = pSearchPathW(((void*)0), testdepW, ((void*)0), sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(ret == 0, "got %d\n", ret);

    ret = pSearchPathW(((void*)0), kernel32dllW, ((void*)0), sizeof(path2W)/sizeof(WCHAR), path2W, ((void*)0));
    ok(ret && ret == lstrlenW(path2W), "got %d\n", ret);


    GetSystemDirectoryW(pathW, sizeof(pathW)/sizeof(WCHAR));
    ret = pSearchPathW(pathW, kernel32W, ((void*)0), sizeof(path2W)/sizeof(WCHAR), path2W, ((void*)0));
    ok(ret == 0, "got %d\n", ret);

    GetWindowsDirectoryW(pathW, sizeof(pathW)/sizeof(WCHAR));

    ret = pActivateActCtx(handle, &cookie);
    ok(ret, "failed to activate context, %u\n", GetLastError());


    ret = pSearchPathW(((void*)0), testdepW, ((void*)0), sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(ret && ret == lstrlenW(buffW), "got %d\n", ret);

    ret = pSearchPathW(((void*)0), testdepW, extW, sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(ret && ret == lstrlenW(buffW), "got %d\n", ret);

    ret = pSearchPathW(((void*)0), testdep1W, dllW, sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(ret && ret == lstrlenW(buffW), "got %d\n", ret);

    ret = pSearchPathW(((void*)0), testdep1W, extW, sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(!ret, "got %d\n", ret);


    ret = pSearchPathW(((void*)0), testdeprelW, ((void*)0), sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(!ret, "got %d\n", ret);


    ret = pSearchPathW(pathW, testdepW, ((void*)0), sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(!ret, "got %d\n", ret);


    ret = pSearchPathW(((void*)0), kernel32dllW, ((void*)0), sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(ret && ret == lstrlenW(buffW), "got %d\n", ret);
    ok(lstrcmpW(buffW, path2W), "got wrong path %s, %s\n", wine_dbgstr_w(buffW), wine_dbgstr_w(path2W));


    ret = pSearchPathW(((void*)0), ole32W, ((void*)0), sizeof(buffW)/sizeof(WCHAR), buffW, ((void*)0));
    ok(ret && ret == lstrlenW(buffW), "got %d\n", ret);

    ret = pDeactivateActCtx(0, cookie);
    ok(ret, "failed to deactivate context, %u\n", GetLastError());
    pReleaseActCtx(handle);
}
