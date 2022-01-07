
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HRESULT ;


 char* CURR_DIR ;
 int DeleteFileA (char*) ;
 scalar_t__ E_INVALIDARG ;
 int MAX_PATH ;
 int create_inf_file (char*) ;
 int lstrcatA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pLaunchINFSectionEx (int *,int *,char*,int ) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_LaunchINFSectionEx(void)
{
    HRESULT hr;
    char cmdline[MAX_PATH];

    create_inf_file("test.inf");


    lstrcpyA(cmdline, CURR_DIR);
    lstrcatA(cmdline, "\\");
    lstrcatA(cmdline, "test.inf,DefaultInstall,c:imacab.cab,4");
    hr = pLaunchINFSectionEx(((void*)0), ((void*)0), cmdline, 0);
    ok(hr == 0, "Expected 0, got %d\n", hr);


    lstrcpyA(cmdline, "\"");
    lstrcatA(cmdline, CURR_DIR);
    lstrcatA(cmdline, "\\test.inf\",\"DefaultInstall\",\"c:,imacab.cab\",\"4\"");
    hr = pLaunchINFSectionEx(((void*)0), ((void*)0), cmdline, 0);
    ok(hr == 0, "Expected 0, got %d\n", hr);




    if (winetest_interactive)
    {

        lstrcpyA(cmdline, "test.inf,DefaultInstall,c:imacab.cab,4");
        hr = pLaunchINFSectionEx(((void*)0), ((void*)0), cmdline, 0);
        ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %d\n", hr);
    }

    DeleteFileA("test.inf");
}
