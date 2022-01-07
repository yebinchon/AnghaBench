
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int HWND ;
typedef int HDC ;
typedef int BOOL ;


 int CreateWindowExA (int ,char*,int *,int ,int ,int ,int,int,int ,int ,int ,int *) ;
 int DKGRAY_BRUSH ;
 int DST_TEXT ;
 int DestroyWindow (int ) ;
 int DrawStateA (int ,int ,int *,int ,int ,int ,int ,int,int,int ) ;
 int GetDC (int ) ;
 int GetLastError () ;
 int GetStockObject (int ) ;
 int ReleaseDC (int ,int ) ;
 int SetLastError (int) ;
 int WS_POPUP ;
 int assert (int ) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_DrawState(void)
{
    static const char text[] = "Sample text string";
    HWND hwnd;
    HDC hdc;
    BOOL ret;

    hwnd = CreateWindowExA(0, "static", ((void*)0), WS_POPUP,
                           0, 0, 200, 200, 0, 0, 0, ((void*)0));
    assert(hwnd);

    hdc = GetDC(hwnd);
    assert(hdc);

    SetLastError(0xdeadbeef);
    ret = DrawStateA(hdc, GetStockObject(DKGRAY_BRUSH), ((void*)0), (LPARAM)text, strlen(text),
                    0, 0, 10, 10, DST_TEXT);
    ok(ret, "DrawState error %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = DrawStateA(hdc, GetStockObject(DKGRAY_BRUSH), ((void*)0), (LPARAM)text, 0,
                    0, 0, 10, 10, DST_TEXT);
    ok(ret, "DrawState error %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = DrawStateA(hdc, GetStockObject(DKGRAY_BRUSH), ((void*)0), 0, strlen(text),
                    0, 0, 10, 10, DST_TEXT);
    ok(!ret || broken(ret) , "DrawState succeeded\n");
    ok(GetLastError() == 0xdeadbeef, "not expected error %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = DrawStateA(hdc, GetStockObject(DKGRAY_BRUSH), ((void*)0), 0, 0,
                    0, 0, 10, 10, DST_TEXT);
    ok(!ret || broken(ret) , "DrawState succeeded\n");
    ok(GetLastError() == 0xdeadbeef, "not expected error %u\n", GetLastError());

    ReleaseDC(hwnd, hdc);
    DestroyWindow(hwnd);
}
