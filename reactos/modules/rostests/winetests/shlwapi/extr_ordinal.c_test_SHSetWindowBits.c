
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lpszClassName; int * lpszMenuName; int * hbrBackground; int hCursor; scalar_t__ hIcon; int hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int lpfnWndProc; scalar_t__ style; } ;
typedef TYPE_1__ WNDCLASSA ;
typedef int LPSTR ;
typedef int * HWND ;
typedef int DWORD ;


 int * CreateWindowA (char*,char*,int,int ,int ,int,int,int *,int *,int ,int ) ;
 int DefWindowProcA ;
 int DestroyWindow (int *) ;
 scalar_t__ ERROR_INVALID_WINDOW_HANDLE ;
 int GWL_STYLE ;
 scalar_t__ GetLastError () ;
 int GetModuleHandleA (int *) ;
 int GetWindowLongA (int *,int ) ;
 scalar_t__ IDC_ARROW ;
 int IsWindow (int *) ;
 int LoadCursorA (int ,int ) ;
 int RegisterClassA (TYPE_1__*) ;
 int SetLastError (int) ;
 int UnregisterClassA (char*,int ) ;
 int WS_VISIBLE ;
 int ok (int,char*,...) ;
 int pSHSetWindowBits (int *,int ,int,int) ;

__attribute__((used)) static void test_SHSetWindowBits(void)
{
    HWND hwnd;
    DWORD style, styleold;
    WNDCLASSA clsA;

    clsA.style = 0;
    clsA.lpfnWndProc = DefWindowProcA;
    clsA.cbClsExtra = 0;
    clsA.cbWndExtra = 0;
    clsA.hInstance = GetModuleHandleA(((void*)0));
    clsA.hIcon = 0;
    clsA.hCursor = LoadCursorA(0, (LPSTR)IDC_ARROW);
    clsA.hbrBackground = ((void*)0);
    clsA.lpszMenuName = ((void*)0);
    clsA.lpszClassName = "Shlwapi test class";
    RegisterClassA(&clsA);

    hwnd = CreateWindowA("Shlwapi test class", "Test", WS_VISIBLE, 0, 0, 100, 100,
                          ((void*)0), ((void*)0), GetModuleHandleA(((void*)0)), 0);
    ok(IsWindow(hwnd), "failed to create window\n");


    SetLastError(0xdeadbeef);
    style = pSHSetWindowBits(((void*)0), GWL_STYLE, 0, 0);
    ok(style == 0, "expected 0 retval, got %d\n", style);
    ok(GetLastError() == ERROR_INVALID_WINDOW_HANDLE,
        "expected ERROR_INVALID_WINDOW_HANDLE, got %d\n", GetLastError());


    styleold = GetWindowLongA(hwnd, GWL_STYLE);
    style = pSHSetWindowBits(hwnd, GWL_STYLE, 0, 0);
    ok(styleold == style, "expected old style\n");
    ok(styleold == GetWindowLongA(hwnd, GWL_STYLE), "expected to keep old style\n");


    styleold = GetWindowLongA(hwnd, GWL_STYLE);
    ok(styleold & WS_VISIBLE, "expected WS_VISIBLE\n");
    style = pSHSetWindowBits(hwnd, GWL_STYLE, WS_VISIBLE, 0);

    ok(style == styleold, "expected previous style, got %x\n", style);
    ok((GetWindowLongA(hwnd, GWL_STYLE) & WS_VISIBLE) == 0, "expected updated style\n");


    styleold = GetWindowLongA(hwnd, GWL_STYLE);
    style = pSHSetWindowBits(hwnd, GWL_STYLE, WS_VISIBLE, 0);
    ok(style == styleold, "expected previous style, got %x\n", style);
    ok(styleold == GetWindowLongA(hwnd, GWL_STYLE), "expected to keep old style\n");


    styleold = GetWindowLongA(hwnd, GWL_STYLE);
    style = pSHSetWindowBits(hwnd, GWL_STYLE, WS_VISIBLE, WS_VISIBLE);
    ok(style == styleold, "expected previous style, got %x\n", style);
    ok(GetWindowLongA(hwnd, GWL_STYLE) & WS_VISIBLE, "expected updated style\n");


    pSHSetWindowBits(hwnd, GWL_STYLE, WS_VISIBLE, 0);
    ok((GetWindowLongA(hwnd, GWL_STYLE) & WS_VISIBLE) == 0, "expected updated style\n");
    styleold = GetWindowLongA(hwnd, GWL_STYLE);
    style = pSHSetWindowBits(hwnd, GWL_STYLE, 0, WS_VISIBLE);
    ok(style == styleold, "expected previous style, got %x\n", style);
    ok((GetWindowLongA(hwnd, GWL_STYLE) & WS_VISIBLE) == 0, "expected updated style\n");

    DestroyWindow(hwnd);

    UnregisterClassA("Shlwapi test class", GetModuleHandleA(((void*)0)));
}
