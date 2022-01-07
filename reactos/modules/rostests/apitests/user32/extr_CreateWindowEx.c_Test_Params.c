
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG_PTR ;
typedef int * HWND ;
typedef int * DWORD ;


 int * CreateWindowExW (int ,char*,int *,int,int ,int ,int ,int ,int *,int *,int *,int *) ;
 int DestroyWindow (int *) ;
 int * ERROR_INVALID_WINDOW_HANDLE ;
 int * ERROR_TLW_WITH_WSCHILD ;
 int * GetLastError () ;
 int SetLastError (int) ;
 int WS_CHILD ;
 int WS_POPUP ;
 int ok (int,char*,int *) ;

__attribute__((used)) static void Test_Params(void)
{
    HWND hWnd;
    DWORD dwError;

    SetLastError(0x1234);
    hWnd = CreateWindowExW(0, L"BUTTON", ((void*)0), 0, 0, 0, 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    dwError = GetLastError();
    ok(hWnd != ((void*)0), "hWnd = %p\n", hWnd);
    ok(dwError == 0, "error = %lu\n", dwError);
    DestroyWindow(hWnd);

    SetLastError(0x1234);
    hWnd = CreateWindowExW(0, L"BUTTON", ((void*)0), 0, 0, 0, 0, 0, (HWND)(LONG_PTR)-1, ((void*)0), ((void*)0), ((void*)0));
    dwError = GetLastError();
    ok(hWnd == ((void*)0), "hWnd = %p\n", hWnd);
    ok(dwError == ERROR_INVALID_WINDOW_HANDLE, "error = %lu\n", dwError);

    SetLastError(0x1234);
    hWnd = CreateWindowExW(0, L"BUTTON", ((void*)0), WS_CHILD, 0, 0, 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    dwError = GetLastError();
    ok(hWnd == ((void*)0), "hWnd = %p\n", hWnd);
    ok(dwError == ERROR_TLW_WITH_WSCHILD, "error = %lu\n", dwError);

    SetLastError(0x1234);
    hWnd = CreateWindowExW(0, L"BUTTON", ((void*)0), WS_CHILD, 0, 0, 0, 0, (HWND)(LONG_PTR)-1, ((void*)0), ((void*)0), ((void*)0));
    dwError = GetLastError();
    ok(hWnd == ((void*)0), "hWnd = %p\n", hWnd);
    ok(dwError == ERROR_INVALID_WINDOW_HANDLE, "error = %lu\n", dwError);

    SetLastError(0x1234);
    hWnd = CreateWindowExW(0, L"BUTTON", ((void*)0), WS_POPUP, 0, 0, 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    dwError = GetLastError();
    ok(hWnd != ((void*)0), "hWnd = %p\n", hWnd);
    ok(dwError == 0, "error = %lu\n", dwError);
    DestroyWindow(hWnd);

    SetLastError(0x1234);
    hWnd = CreateWindowExW(0, L"BUTTON", ((void*)0), WS_POPUP, 0, 0, 0, 0, (HWND)(LONG_PTR)-1, ((void*)0), ((void*)0), ((void*)0));
    dwError = GetLastError();
    ok(hWnd == ((void*)0), "hWnd = %p\n", hWnd);
    ok(dwError == ERROR_INVALID_WINDOW_HANDLE, "error = %lu\n", dwError);

    SetLastError(0x1234);
    hWnd = CreateWindowExW(0, L"BUTTON", ((void*)0), WS_CHILD|WS_POPUP, 0, 0, 0, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    dwError = GetLastError();
    ok(hWnd != ((void*)0), "hWnd = %p\n", hWnd);
    ok(dwError == 0, "error = %lu\n", dwError);
    DestroyWindow(hWnd);

    SetLastError(0x1234);
    hWnd = CreateWindowExW(0, L"BUTTON", ((void*)0), WS_CHILD|WS_POPUP, 0, 0, 0, 0, (HWND)(LONG_PTR)-1, ((void*)0), ((void*)0), ((void*)0));
    dwError = GetLastError();
    ok(hWnd == ((void*)0), "hWnd = %p\n", hWnd);
    ok(dwError == ERROR_INVALID_WINDOW_HANDLE, "error = %lu\n", dwError);
}
