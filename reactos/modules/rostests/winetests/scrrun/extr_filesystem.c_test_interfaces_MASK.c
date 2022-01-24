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
typedef  char WCHAR ;
typedef  scalar_t__ VARIANT_BOOL ;
typedef  int /*<<< orphan*/  IObjectWithSite ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_FileSystemObject ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_IObjectWithSite ; 
 int MAX_PATH ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARIANT_FALSE ; 
 scalar_t__ VARIANT_TRUE ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
    static const WCHAR nonexistent_dirW[] = {
        'c', ':', '\\', 'N', 'o', 'n', 'e', 'x', 'i', 's', 't', 'e', 'n', 't', 0};
    static const WCHAR pathW[] = {'p','a','t','h',0};
    static const WCHAR file_kernel32W[] = {
        '\\', 'k', 'e', 'r', 'n', 'e', 'l', '3', '2', '.', 'd', 'l', 'l', 0};
    HRESULT hr;
    IDispatch *disp;
    IDispatchEx *dispex;
    IObjectWithSite *site;
    VARIANT_BOOL b;
    BSTR path;
    WCHAR windows_path[MAX_PATH];
    WCHAR file_path[MAX_PATH];

    FUNC5(fs3, &IID_IDispatch, (void**)&disp);

    FUNC0(windows_path, MAX_PATH);
    FUNC9(file_path, windows_path);
    FUNC8(file_path, file_kernel32W);

    FUNC11(disp, &CLSID_FileSystemObject);

    hr = FUNC1(disp, &IID_IObjectWithSite, (void**)&site);
    FUNC10(hr == E_NOINTERFACE, "got 0x%08x, expected 0x%08x\n", hr, E_NOINTERFACE);

    hr = FUNC1(disp, &IID_IDispatchEx, (void**)&dispex);
    FUNC10(hr == E_NOINTERFACE, "got 0x%08x, expected 0x%08x\n", hr, E_NOINTERFACE);

    b = VARIANT_TRUE;
    hr = FUNC3(fs3, NULL, &b);
    FUNC10(hr == S_OK, "got 0x%08x, expected 0x%08x\n", hr, S_OK);
    FUNC10(b == VARIANT_FALSE, "got %x\n", b);

    hr = FUNC3(fs3, NULL, NULL);
    FUNC10(hr == E_POINTER, "got 0x%08x, expected 0x%08x\n", hr, E_POINTER);

    path = FUNC6(pathW);
    b = VARIANT_TRUE;
    hr = FUNC3(fs3, path, &b);
    FUNC10(hr == S_OK, "got 0x%08x, expected 0x%08x\n", hr, S_OK);
    FUNC10(b == VARIANT_FALSE, "got %x\n", b);
    FUNC7(path);

    path = FUNC6(file_path);
    b = VARIANT_FALSE;
    hr = FUNC3(fs3, path, &b);
    FUNC10(hr == S_OK, "got 0x%08x, expected 0x%08x\n", hr, S_OK);
    FUNC10(b == VARIANT_TRUE, "got %x\n", b);
    FUNC7(path);

    path = FUNC6(windows_path);
    b = VARIANT_TRUE;
    hr = FUNC3(fs3, path, &b);
    FUNC10(hr == S_OK, "got 0x%08x, expected 0x%08x\n", hr, S_OK);
    FUNC10(b == VARIANT_FALSE, "got %x\n", b);
    FUNC7(path);

    /* Folder Exists */
    hr = FUNC4(fs3, NULL, NULL);
    FUNC10(hr == E_POINTER, "got 0x%08x, expected 0x%08x\n", hr, E_POINTER);

    path = FUNC6(windows_path);
    hr = FUNC4(fs3, path, &b);
    FUNC10(hr == S_OK, "got 0x%08x, expected 0x%08x\n", hr, S_OK);
    FUNC10(b == VARIANT_TRUE, "Folder doesn't exists\n");
    FUNC7(path);

    path = FUNC6(nonexistent_dirW);
    hr = FUNC4(fs3, path, &b);
    FUNC10(hr == S_OK, "got 0x%08x, expected 0x%08x\n", hr, S_OK);
    FUNC10(b == VARIANT_FALSE, "Folder exists\n");
    FUNC7(path);

    path = FUNC6(file_path);
    hr = FUNC4(fs3, path, &b);
    FUNC10(hr == S_OK, "got 0x%08x, expected 0x%08x\n", hr, S_OK);
    FUNC10(b == VARIANT_FALSE, "Folder exists\n");
    FUNC7(path);

    FUNC2(disp);
}