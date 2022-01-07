
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetEnvironmentVariableA (char*,char*) ;
 int ok (int,char*) ;
 int pNeedCurrentDirectoryForExePathA (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_NeedCurrentDirectoryForExePathA(void)
{
    if (!pNeedCurrentDirectoryForExePathA)
    {
        win_skip("NeedCurrentDirectoryForExePathA is not available\n");
        return;
    }


    if (0)
        pNeedCurrentDirectoryForExePathA(((void*)0));

    SetEnvironmentVariableA("NoDefaultCurrentDirectoryInExePath", ((void*)0));
    ok(pNeedCurrentDirectoryForExePathA("."), "returned FALSE for \".\"\n");
    ok(pNeedCurrentDirectoryForExePathA("c:\\"), "returned FALSE for \"c:\\\"\n");
    ok(pNeedCurrentDirectoryForExePathA("cmd.exe"), "returned FALSE for \"cmd.exe\"\n");

    SetEnvironmentVariableA("NoDefaultCurrentDirectoryInExePath", "nya");
    ok(!pNeedCurrentDirectoryForExePathA("."), "returned TRUE for \".\"\n");
    ok(pNeedCurrentDirectoryForExePathA("c:\\"), "returned FALSE for \"c:\\\"\n");
    ok(!pNeedCurrentDirectoryForExePathA("cmd.exe"), "returned TRUE for \"cmd.exe\"\n");
}
