#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IDirectInputA ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*,int,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ DIERR_OLDDIRECTINPUTVERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_FRENCH ; 
 int /*<<< orphan*/  LANG_GERMAN ; 
 int /*<<< orphan*/  LANG_JAPANESE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_FRENCH ; 
 int /*<<< orphan*/  SUBLANG_GERMAN ; 
 int /*<<< orphan*/  SUBLANG_JAPANESE_JAPAN ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int WS_OVERLAPPEDWINDOW ; 
 int WS_VISIBLE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(DWORD version)
{
    HRESULT hr;
    IDirectInputA *pDI = NULL;
    HINSTANCE hInstance = FUNC4(NULL);
    HWND hwnd;
    ULONG ref = 0;

    hr = FUNC11(hInstance, version, &pDI, NULL);
    if (hr == DIERR_OLDDIRECTINPUTVERSION)
    {
        FUNC13("Tests require a newer dinput version\n");
        return;
    }
    FUNC10(FUNC7(hr), "DirectInputCreateA() failed: %08x\n", hr);
    if (FUNC2(hr)) return;

    hwnd = FUNC0("static", "Title", WS_OVERLAPPEDWINDOW | WS_VISIBLE, 10, 10, 200, 200,
                         NULL, NULL, NULL, NULL);
    FUNC10(hwnd != NULL, "err: %d\n", FUNC3());
    FUNC8( hwnd );

    if (hwnd)
    {
        FUNC12();

        FUNC9(pDI, hwnd);
        FUNC18(pDI, hwnd);
        FUNC17(pDI, hwnd);
        FUNC15(pDI, hwnd);
        FUNC14(pDI);

        FUNC16(pDI, hwnd, FUNC6(LANG_ENGLISH, SUBLANG_DEFAULT));
        FUNC16(pDI, hwnd, FUNC6(LANG_FRENCH, SUBLANG_FRENCH));
        FUNC16(pDI, hwnd, FUNC6(LANG_GERMAN, SUBLANG_GERMAN));
        FUNC16(pDI, hwnd, FUNC6(LANG_JAPANESE, SUBLANG_JAPANESE_JAPAN));
    }

    FUNC1(hwnd);
    if (pDI) ref = FUNC5(pDI);
    FUNC10(!ref, "IDirectInput_Release() reference count = %d\n", ref);
}