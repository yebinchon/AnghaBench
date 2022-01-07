
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int * HTHEME ;
typedef scalar_t__ HRESULT ;


 int * OpenThemeData (int ,char*) ;
 scalar_t__ S_OK ;
 scalar_t__ SetWindowTheme (int ,char*,char*) ;
 int ok (int,char*,...) ;

void TestTheme(HWND hwnd)
{
    HRESULT hr;
    HTHEME htheme1, htheme2;

    hr = SetWindowTheme(hwnd, ((void*)0), ((void*)0));
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    htheme1 = OpenThemeData(hwnd, L"Toolbar");
    ok (htheme1 != ((void*)0), "OpenThemeData failed\n");

    hr = SetWindowTheme(hwnd, L"", L"");
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    htheme2 = OpenThemeData(hwnd, L"Toolbar");
    ok (htheme2 == ((void*)0), "Expected OpenThemeData to fail\n");

    hr = SetWindowTheme(hwnd, L"TrayNotify", L"");
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    htheme2 = OpenThemeData(hwnd, L"Toolbar");
    ok (htheme2 == ((void*)0), "Expected OpenThemeData to fail\n");

    hr = SetWindowTheme(hwnd, L"TrayNotify", ((void*)0));
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    htheme2 = OpenThemeData(hwnd, L"Toolbar");
    ok (htheme2 != ((void*)0), "OpenThemeData failed\n");

    ok(htheme1 != htheme2, "Expected different theme data\n");
}
