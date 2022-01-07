
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWINSTA ;
typedef int * HDESK ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CloseDesktop (int *) ;
 scalar_t__ CloseWindowStation (scalar_t__) ;
 scalar_t__ CreateWindowStationW (char*,int ,int ,int *) ;
 int DESKTOP_ALL_ACCESS ;
 scalar_t__ ERROR_INVALID_FUNCTION ;
 scalar_t__ FALSE ;
 int GetCurrentThreadId () ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetProcessWindowStation () ;
 int * GetThreadDesktop (int ) ;
 int * OpenInputDesktop (int ,scalar_t__,int ) ;
 scalar_t__ SetProcessWindowStation (scalar_t__) ;
 scalar_t__ SetThreadDesktop (int *) ;
 scalar_t__ TRUE ;
 int WINSTA_ALL_ACCESS ;
 int ok (int,char*,...) ;

void Test_OpenInputDesktop()
{
    HDESK hDeskInput ,hDeskInput2;
    HDESK hDeskInitial;
    BOOL ret;
    HWINSTA hwinsta = ((void*)0), hwinstaInitial;
    DWORD err;

    hDeskInput = OpenInputDesktop(0, FALSE, DESKTOP_ALL_ACCESS);
    ok(hDeskInput != ((void*)0), "OpenInputDesktop failed\n");
    hDeskInitial = GetThreadDesktop( GetCurrentThreadId() );
    ok(hDeskInitial != ((void*)0), "GetThreadDesktop failed\n");
    ok(hDeskInput != hDeskInitial, "OpenInputDesktop returned thread desktop\n");

    hDeskInput2 = OpenInputDesktop(0, FALSE, DESKTOP_ALL_ACCESS);
    ok(hDeskInput2 != ((void*)0), "Second call to OpenInputDesktop failed\n");
    ok(hDeskInput2 != hDeskInput, "Second call to OpenInputDesktop returned same handle\n");

    ok(CloseDesktop(hDeskInput2) != 0, "CloseDesktop failed\n");

    ret = SetThreadDesktop(hDeskInput);
    ok(ret == TRUE, "SetThreadDesktop for input desktop failed\n");

    ret = SetThreadDesktop(hDeskInitial);
    ok(ret == TRUE, "SetThreadDesktop for initial desktop failed\n");

    ok(CloseDesktop(hDeskInput) != 0, "CloseDesktop failed\n");


    hwinstaInitial = GetProcessWindowStation();
    ok(hwinstaInitial != 0, "GetProcessWindowStation failed\n");

    hwinsta = CreateWindowStationW(L"TestWinsta", 0, WINSTA_ALL_ACCESS, ((void*)0));
    ok(hwinsta != 0, "CreateWindowStationW failed\n");

    ret = SetProcessWindowStation(hwinsta);
    ok(ret != FALSE, "SetProcessWindowStation failed\n");

    hDeskInput = OpenInputDesktop(0, FALSE, DESKTOP_ALL_ACCESS);
    ok(hDeskInput == 0, "OpenInputDesktop should fail\n");

    err = GetLastError();
    ok(err == ERROR_INVALID_FUNCTION, "Got last error: %lu\n", err);

    ret = SetProcessWindowStation(hwinstaInitial);
    ok(ret != FALSE, "SetProcessWindowStation failed\n");

    ret = CloseWindowStation(hwinsta);
    ok(ret != FALSE, "CloseWindowStation failed\n");

}
