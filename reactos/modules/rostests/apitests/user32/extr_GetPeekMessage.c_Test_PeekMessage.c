
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int HWND ;


 int DNS_ERROR_RCODE_NXRRSET ;
 scalar_t__ ERROR_INVALID_WINDOW_HANDLE ;
 scalar_t__ GetLastError () ;
 int PM_NOREMOVE ;
 scalar_t__ PeekMessage (int *,int ,int ,int ,int ) ;
 int SetLastError (int ) ;
 int ok (int,char*,...) ;

void Test_PeekMessage(HWND hWnd)
{
    MSG msg;

    SetLastError(DNS_ERROR_RCODE_NXRRSET);

    ok(PeekMessage(&msg, hWnd, 0, 0, PM_NOREMOVE) == 0, "\n");
    ok(GetLastError() == ERROR_INVALID_WINDOW_HANDLE, "GetLastError() = %lu\n", GetLastError());
}
