
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int SetEnvironmentVariableA (char*,char*) ;
 int ok (int,char*) ;
 int pNeedCurrentDirectoryForExePathW (char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_NeedCurrentDirectoryForExePathW(void)
{
    const WCHAR thispath[] = {'.', 0};
    const WCHAR fullpath[] = {'c', ':', '\\', 0};
    const WCHAR cmdname[] = {'c', 'm', 'd', '.', 'e', 'x', 'e', 0};

    if (!pNeedCurrentDirectoryForExePathW)
    {
        win_skip("NeedCurrentDirectoryForExePathW is not available\n");
        return;
    }


    if (0)
        pNeedCurrentDirectoryForExePathW(((void*)0));

    SetEnvironmentVariableA("NoDefaultCurrentDirectoryInExePath", ((void*)0));
    ok(pNeedCurrentDirectoryForExePathW(thispath), "returned FALSE for \".\"\n");
    ok(pNeedCurrentDirectoryForExePathW(fullpath), "returned FALSE for \"c:\\\"\n");
    ok(pNeedCurrentDirectoryForExePathW(cmdname), "returned FALSE for \"cmd.exe\"\n");

    SetEnvironmentVariableA("NoDefaultCurrentDirectoryInExePath", "nya");
    ok(!pNeedCurrentDirectoryForExePathW(thispath), "returned TRUE for \".\"\n");
    ok(pNeedCurrentDirectoryForExePathW(fullpath), "returned FALSE for \"c:\\\"\n");
    ok(!pNeedCurrentDirectoryForExePathW(cmdname), "returned TRUE for \"cmd.exe\"\n");
}
