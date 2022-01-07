
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpdirA ;
typedef int pathA ;
typedef int path2A ;
typedef int buffA ;
typedef int ULONG_PTR ;
typedef int HANDLE ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int CopyFileA (char*,char*,int ) ;
 int DeleteFileA (char*) ;
 int ERROR_INVALID_PARAMETER ;
 int FALSE ;
 int GetCurrentDirectoryA (int,char*) ;
 int GetLastError () ;
 int GetTempPathA (int,char*) ;
 int GetWindowsDirectoryA (char*,int) ;
 int MAX_PATH ;
 int SetCurrentDirectoryA (char*) ;
 int SetLastError (int) ;
 int create_manifest_file (char*,int ) ;
 int delete_manifest_file (char*) ;
 int manifest_dep ;
 int manifest_main ;
 int ok (int,char*,...) ;
 int pActivateActCtx (int ,int *) ;
 int pDeactivateActCtx (int ,int ) ;
 int pReleaseActCtx (int ) ;
 int pSearchPathA (char*,char const*,char*,int,char*,char**) ;
 int sprintf (char*,char*,char*,char const*,...) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int test_create (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SearchPathA(void)
{
    static const CHAR testdepA[] = "testdep.dll";
    static const CHAR testdeprelA[] = "./testdep.dll";
    static const CHAR kernel32A[] = "kernel32.dll";
    static const CHAR fileA[] = "";
    CHAR pathA[MAX_PATH], buffA[MAX_PATH], path2A[MAX_PATH], path3A[MAX_PATH], curdirA[MAX_PATH];
    CHAR tmpdirA[MAX_PATH], *ptrA = ((void*)0);
    ULONG_PTR cookie;
    HANDLE handle;
    BOOL bret;
    DWORD ret;

    if (!pSearchPathA)
    {
        win_skip("SearchPathA isn't available\n");
        return;
    }

    GetWindowsDirectoryA(pathA, sizeof(pathA)/sizeof(CHAR));


    SetLastError(0xdeadbeef);
    ret = pSearchPathA(pathA, ((void*)0), ((void*)0), sizeof(buffA)/sizeof(CHAR), buffA, &ptrA);
    ok(ret == 0, "Expected failure, got %d\n", ret);
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %x\n", GetLastError());


    SetLastError(0xdeadbeef);
    ret = pSearchPathA(pathA, fileA, ((void*)0), sizeof(buffA)/sizeof(CHAR), buffA, &ptrA);
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


    ret = pSearchPathA(((void*)0), testdepA, ((void*)0), sizeof(buffA)/sizeof(CHAR), buffA, ((void*)0));
    ok(ret == 0, "got %d\n", ret);

    ret = pSearchPathA(((void*)0), kernel32A, ((void*)0), sizeof(path2A)/sizeof(CHAR), path2A, ((void*)0));
    ok(ret && ret == strlen(path2A), "got %d\n", ret);

    ret = pActivateActCtx(handle, &cookie);
    ok(ret, "failed to activate context, %u\n", GetLastError());


    ret = pSearchPathA(((void*)0), testdepA, ((void*)0), sizeof(buffA)/sizeof(CHAR), buffA, ((void*)0));
    ok(ret && ret == strlen(buffA), "got %d\n", ret);

    ret = pSearchPathA(((void*)0), "testdep.dll", ".ext", sizeof(buffA)/sizeof(CHAR), buffA, ((void*)0));
    ok(ret && ret == strlen(buffA), "got %d\n", ret);

    ret = pSearchPathA(((void*)0), "testdep", ".dll", sizeof(buffA)/sizeof(CHAR), buffA, ((void*)0));
    ok(ret && ret == strlen(buffA), "got %d\n", ret);

    ret = pSearchPathA(((void*)0), "testdep", ".ext", sizeof(buffA)/sizeof(CHAR), buffA, ((void*)0));
    ok(!ret, "got %d\n", ret);


    ret = pSearchPathA(((void*)0), testdeprelA, ((void*)0), sizeof(buffA)/sizeof(CHAR), buffA, ((void*)0));
    ok(!ret, "got %d\n", ret);


    ret = pSearchPathA(pathA, testdepA, ((void*)0), sizeof(buffA)/sizeof(CHAR), buffA, ((void*)0));
    ok(!ret, "got %d\n", ret);


    ret = pSearchPathA(((void*)0), kernel32A, ((void*)0), sizeof(buffA)/sizeof(CHAR), buffA, ((void*)0));
    ok(ret && ret == strlen(buffA), "got %d\n", ret);
    ok(strcmp(buffA, path2A), "got wrong path %s, %s\n", buffA, path2A);

    ret = pDeactivateActCtx(0, cookie);
    ok(ret, "failed to deactivate context, %u\n", GetLastError());
    pReleaseActCtx(handle);


    GetTempPathA(sizeof(tmpdirA), tmpdirA);
    ret = GetCurrentDirectoryA(MAX_PATH, curdirA);
    ok(ret, "failed to obtain working directory.\n");
    sprintf(pathA, "%s\\%s", tmpdirA, kernel32A);
    ret = pSearchPathA(((void*)0), kernel32A, ((void*)0), sizeof(path2A)/sizeof(CHAR), path2A, ((void*)0));
    ok(ret && ret == strlen(path2A), "got %d\n", ret);
    bret = CopyFileA(path2A, pathA, FALSE);
    ok(bret != 0, "failed to copy test executable to temp directory, %u\n", GetLastError());
    sprintf(path3A, "%s%s%s", curdirA, curdirA[strlen(curdirA)-1] != '\\' ? "\\" : "", kernel32A);
    bret = CopyFileA(path2A, path3A, FALSE);
    ok(bret != 0, "failed to copy test executable to launch directory, %u\n", GetLastError());
    bret = SetCurrentDirectoryA(tmpdirA);
    ok(bret, "failed to change working directory\n");
    ret = pSearchPathA(((void*)0), kernel32A, ".exe", sizeof(buffA), buffA, ((void*)0));
    ok(ret && ret == strlen(buffA), "got %d\n", ret);
    ok(strcmp(buffA, path3A) == 0, "expected %s, got %s\n", path3A, buffA);
    bret = SetCurrentDirectoryA(curdirA);
    ok(bret, "failed to reset working directory\n");
    DeleteFileA(path3A);
    DeleteFileA(pathA);
}
