
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IDirectInputA ;
typedef int * HWND ;
typedef scalar_t__ HRESULT ;
typedef int HINSTANCE ;
typedef int DWORD ;


 int * CreateWindowA (char*,char*,int,int,int,int,int,int *,int *,int *,int *) ;
 scalar_t__ DIERR_OLDDIRECTINPUTVERSION ;
 int DestroyWindow (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ GetLastError () ;
 int GetModuleHandleW (int *) ;
 scalar_t__ IUnknown_Release (int *) ;
 int LANG_ENGLISH ;
 int LANG_FRENCH ;
 int LANG_GERMAN ;
 int LANG_JAPANESE ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int SUBLANG_FRENCH ;
 int SUBLANG_GERMAN ;
 int SUBLANG_JAPANESE_JAPAN ;
 int SUCCEEDED (scalar_t__) ;
 int SetForegroundWindow (int *) ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int acquire_tests (int *,int *) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pDirectInputCreateA (int ,int ,int **,int *) ;
 int pump_messages () ;
 int skip (char*) ;
 int test_GetDeviceInfo (int *) ;
 int test_capabilities (int *,int *) ;
 int test_dik_codes (int *,int *,int ) ;
 int test_get_prop (int *,int *) ;
 int test_set_coop (int *,int *) ;

__attribute__((used)) static void keyboard_tests(DWORD version)
{
    HRESULT hr;
    IDirectInputA *pDI = ((void*)0);
    HINSTANCE hInstance = GetModuleHandleW(((void*)0));
    HWND hwnd;
    ULONG ref = 0;

    hr = pDirectInputCreateA(hInstance, version, &pDI, ((void*)0));
    if (hr == DIERR_OLDDIRECTINPUTVERSION)
    {
        skip("Tests require a newer dinput version\n");
        return;
    }
    ok(SUCCEEDED(hr), "DirectInputCreateA() failed: %08x\n", hr);
    if (FAILED(hr)) return;

    hwnd = CreateWindowA("static", "Title", WS_OVERLAPPEDWINDOW | WS_VISIBLE, 10, 10, 200, 200,
                         ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(hwnd != ((void*)0), "err: %d\n", GetLastError());
    SetForegroundWindow( hwnd );

    if (hwnd)
    {
        pump_messages();

        acquire_tests(pDI, hwnd);
        test_set_coop(pDI, hwnd);
        test_get_prop(pDI, hwnd);
        test_capabilities(pDI, hwnd);
        test_GetDeviceInfo(pDI);

        test_dik_codes(pDI, hwnd, MAKELANGID(LANG_ENGLISH, SUBLANG_DEFAULT));
        test_dik_codes(pDI, hwnd, MAKELANGID(LANG_FRENCH, SUBLANG_FRENCH));
        test_dik_codes(pDI, hwnd, MAKELANGID(LANG_GERMAN, SUBLANG_GERMAN));
        test_dik_codes(pDI, hwnd, MAKELANGID(LANG_JAPANESE, SUBLANG_JAPANESE_JAPAN));
    }

    DestroyWindow(hwnd);
    if (pDI) ref = IUnknown_Release(pDI);
    ok(!ref, "IDirectInput_Release() reference count = %d\n", ref);
}
