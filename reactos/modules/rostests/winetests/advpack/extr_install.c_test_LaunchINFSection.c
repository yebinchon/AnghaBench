
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int CURR_DIR ;
 int CreateDirectoryA (char*,int *) ;
 int DeleteFileA (char*) ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 int create_inf_file (char*) ;
 int lstrcatA (char*,char*) ;
 int lstrcpyA (char*,int ) ;
 int ok (int,char*,int) ;
 int pLaunchINFSection (int *,int *,char*,int ) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_LaunchINFSection(void)
{
    HRESULT hr;
    char cmdline[MAX_PATH];
    static char file[] = "test.inf,DefaultInstall,4,0";
    static char file2[] = "test.inf,,1,0";




    if (winetest_interactive)
    {

        hr = pLaunchINFSection(((void*)0), ((void*)0), ((void*)0), 0);
        ok(hr == 1, "Expected 1, got %d\n", hr);
    }

    CreateDirectoryA("one", ((void*)0));
    create_inf_file("one\\test.inf");


    lstrcpyA(cmdline, CURR_DIR);
    lstrcatA(cmdline, "\\");
    lstrcatA(cmdline, "one\\test.inf,DefaultInstall,,4");
    hr = pLaunchINFSection(((void*)0), ((void*)0), cmdline, 0);
    ok(hr == 0, "Expected 0, got %d\n", hr);

    DeleteFileA("one\\test.inf");
    RemoveDirectoryA("one");

    create_inf_file("test.inf");


    hr = pLaunchINFSection(((void*)0), ((void*)0), file, 0);
    ok(hr == 0, "Expected 0, got %d\n", hr);

    hr = pLaunchINFSection(((void*)0), ((void*)0), file2, 0);
    ok(hr == 0, "Expected 0, got %d\n", hr);

    DeleteFileA("test.inf");
}
