
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float WCHAR ;
typedef int * HANDLE ;
typedef int BOOL ;


 int ARRAY_SIZE (float*) ;
 int CREATE_ALWAYS ;
 int CloseHandle (int *) ;
 int * CreateFileW (float*,int ,int ,int *,int ,int ,int *) ;
 int FILE_FLAG_DELETE_ON_CLOSE ;
 int GENERIC_WRITE ;
 int GetTempPathW (int ,float*) ;
 int MAX_PATH ;
 int lstrcatW (float*,float const*) ;
 int lstrcmpW (float*,float*) ;
 int lstrcpyW (float*,float*) ;
 int ok (int,char*,int ,...) ;
 int pPathYetAnotherMakeUniqueName (float*,float*,float const*,float const*) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (float*) ;

__attribute__((used)) static void test_PathYetAnotherMakeUniqueName(void)
{
    static const WCHAR shortW[] = {'f','i','l','e','.','t','s','t',0};
    static const WCHAR short2W[] = {'f','i','l','e',' ','(','2',')','.','t','s','t',0};
    static const WCHAR tmpW[] = {'t','m','p',0};
    static const WCHAR longW[] = {'n','a','m','e',0};
    static const WCHAR long2W[] = {'n','a','m','e',' ','(','2',')',0};
    WCHAR nameW[MAX_PATH], buffW[MAX_PATH], pathW[MAX_PATH];
    HANDLE file;
    BOOL ret;

    if (!pPathYetAnotherMakeUniqueName)
    {
        win_skip("PathYetAnotherMakeUniqueName() is not available.\n");
        return;
    }

if (0)
{

    ret = pPathYetAnotherMakeUniqueName(((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(!ret, "got %d\n", ret);

    ret = pPathYetAnotherMakeUniqueName(nameW, ((void*)0), ((void*)0), ((void*)0));
    ok(!ret, "got %d\n", ret);
}

    GetTempPathW(ARRAY_SIZE(pathW), pathW);


    nameW[0] = 0;
    ret = pPathYetAnotherMakeUniqueName(nameW, pathW, shortW, ((void*)0));
    ok(ret, "got %d\n", ret);
    lstrcpyW(buffW, pathW);
    lstrcatW(buffW, shortW);
    ok(!lstrcmpW(nameW, buffW), "got %s, expected %s\n", wine_dbgstr_w(nameW), wine_dbgstr_w(buffW));


    file = CreateFileW(nameW, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_FLAG_DELETE_ON_CLOSE, ((void*)0));
    ok(file != ((void*)0), "got %p\n", file);

    nameW[0] = 0;
    ret = pPathYetAnotherMakeUniqueName(nameW, pathW, shortW, ((void*)0));
    ok(ret, "got %d\n", ret);
    lstrcpyW(buffW, pathW);
    lstrcatW(buffW, short2W);
    ok(!lstrcmpW(nameW, buffW), "got %s, expected %s\n", wine_dbgstr_w(nameW), wine_dbgstr_w(buffW));

    CloseHandle(file);


    nameW[0] = 0;
    ret = pPathYetAnotherMakeUniqueName(nameW, pathW, tmpW, longW);
    ok(ret, "got %d\n", ret);
    lstrcpyW(buffW, pathW);
    lstrcatW(buffW, longW);
    ok(!lstrcmpW(nameW, buffW), "got %s, expected %s\n", wine_dbgstr_w(nameW), wine_dbgstr_w(buffW));

    file = CreateFileW(nameW, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_FLAG_DELETE_ON_CLOSE, ((void*)0));
    ok(file != ((void*)0), "got %p\n", file);

    nameW[0] = 0;
    ret = pPathYetAnotherMakeUniqueName(nameW, pathW, tmpW, longW);
    ok(ret, "got %d\n", ret);
    lstrcpyW(buffW, pathW);
    lstrcatW(buffW, long2W);
    ok(!lstrcmpW(nameW, buffW), "got %s, expected %s\n", wine_dbgstr_w(nameW), wine_dbgstr_w(buffW));

    CloseHandle(file);


    nameW[0] = 0;
    ret = pPathYetAnotherMakeUniqueName(nameW, pathW, ((void*)0), longW);
    ok(ret, "got %d\n", ret);
    lstrcpyW(buffW, pathW);
    lstrcatW(buffW, longW);
    ok(!lstrcmpW(nameW, buffW), "got %s, expected %s\n", wine_dbgstr_w(nameW), wine_dbgstr_w(buffW));
}
