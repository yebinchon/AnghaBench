
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_HANDLE ;
 scalar_t__ S_OK ;
 scalar_t__ SetWindowTheme (int ,char*,char*) ;
 int ok (int,char*,scalar_t__) ;

void TestParams(HWND hwnd)
{
    HRESULT hr;

    hr = SetWindowTheme(0, ((void*)0), ((void*)0));
    ok (hr == E_HANDLE, "Expected E_HANDLE got 0x%lx error\n", hr);

    hr = SetWindowTheme((HWND)(ULONG_PTR)0xdeaddeaddeaddeadULL, ((void*)0), ((void*)0));
    ok (hr == E_HANDLE, "Expected E_HANDLE got 0x%lx error\n", hr);

    hr = SetWindowTheme(hwnd, ((void*)0), ((void*)0));
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    hr = SetWindowTheme(hwnd, L"none", L"none");
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    hr = SetWindowTheme(hwnd, ((void*)0), L"none");
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    hr = SetWindowTheme(hwnd, L"none", ((void*)0));
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);

    hr = SetWindowTheme(hwnd, L"", L"");
    ok (hr == S_OK, "Expected S_OK got 0x%lx error\n", hr);
}
