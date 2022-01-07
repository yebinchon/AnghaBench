
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWINSTA ;
typedef int * HDESK ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CloseDesktop (int *) ;
 scalar_t__ CloseWindowStation (int *) ;
 int * CreateInheritableDesktop (char*,int ,int ,int*) ;
 int * CreateInheritableWinsta (char*,int ,int ,int*) ;
 int DESKTOP_ALL_ACCESS ;
 scalar_t__ FALSE ;
 int * GetProcessWindowStation () ;
 int NO_ERROR ;
 int STATUS_DLL_INIT_FAILED ;
 scalar_t__ SetProcessWindowStation (int *) ;
 int TRUE ;
 int WINSTA_ALL_ACCESS ;
 int ok (int,char*,...) ;
 int test_CreateProcessWithDesktop (int,char*,char*,int ) ;

void Test_InitialDesktop(char *argv0)
{
    HWINSTA hwinsta = ((void*)0), hwinstaInitial;
    HDESK hdesktop = ((void*)0);
    BOOL ret;
    DWORD error;

    hwinstaInitial = GetProcessWindowStation();


    test_CreateProcessWithDesktop(0, argv0, ((void*)0), 0);
    test_CreateProcessWithDesktop(1, argv0, "Default", 0);
    test_CreateProcessWithDesktop(2, argv0, "WinSta0\\", STATUS_DLL_INIT_FAILED);
    test_CreateProcessWithDesktop(3, argv0, "\\Default", STATUS_DLL_INIT_FAILED);
    test_CreateProcessWithDesktop(4, argv0, "WinSta0\\Default", 0);
    test_CreateProcessWithDesktop(5, argv0, "Winlogon", STATUS_DLL_INIT_FAILED);
    test_CreateProcessWithDesktop(6, argv0, "WinSta0/Default", STATUS_DLL_INIT_FAILED);
    test_CreateProcessWithDesktop(7, argv0, "NonExistantDesktop", STATUS_DLL_INIT_FAILED);
    test_CreateProcessWithDesktop(8, argv0, "NonExistantWinsta\\NonExistantDesktop", STATUS_DLL_INIT_FAILED);


    hwinsta = CreateInheritableWinsta(L"TestWinsta", WINSTA_ALL_ACCESS, TRUE, &error);
    ok(hwinsta != ((void*)0) && error == NO_ERROR, "CreateWindowStation failed, got 0x%p, 0x%lx\n", hwinsta, error);
    ret = SetProcessWindowStation(hwinsta);
    ok(ret != FALSE, "SetProcessWindowStation failed\n");
    hdesktop = CreateInheritableDesktop(L"TestDesktop", DESKTOP_ALL_ACCESS, TRUE, &error);
    ok(hdesktop != ((void*)0) && error == 0xfeedf00d, "CreateDesktop failed, got 0x%p, 0x%lx\n", hdesktop, error);

    test_CreateProcessWithDesktop(9, argv0, ((void*)0), 0);
    test_CreateProcessWithDesktop(10, argv0, "TestDesktop", STATUS_DLL_INIT_FAILED);
    test_CreateProcessWithDesktop(11, argv0, "TestWinsta\\", STATUS_DLL_INIT_FAILED);
    test_CreateProcessWithDesktop(12, argv0, "\\TestDesktop", STATUS_DLL_INIT_FAILED);
    test_CreateProcessWithDesktop(13, argv0, "TestWinsta\\TestDesktop", 0);
    test_CreateProcessWithDesktop(14, argv0, "NonExistantWinsta\\NonExistantDesktop", STATUS_DLL_INIT_FAILED);

    ret = SetProcessWindowStation(hwinstaInitial);
    ok(ret != FALSE, "SetProcessWindowStation failed\n");

    ret = CloseDesktop(hdesktop);
    ok(ret != FALSE, "CloseDesktop failed\n");

    ret = CloseWindowStation(hwinsta);
    ok(ret != FALSE, "CloseWindowStation failed\n");
}
