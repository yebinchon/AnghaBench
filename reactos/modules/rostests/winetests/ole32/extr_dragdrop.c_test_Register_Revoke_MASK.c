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
typedef  int /*<<< orphan*/ * HWND ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int CO_E_NOTINITIALIZED ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int DRAGDROP_E_ALREADYREGISTERED ; 
 int DRAGDROP_E_INVALIDHWND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DropTarget ; 
 int E_INVALIDARG ; 
 int E_OUTOFMEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 scalar_t__ FUNC7 (int) ; 
 int droptarget_refs ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HANDLE prop;
    HRESULT hr;
    HWND hwnd;

    hwnd = FUNC0("WineOleTestClass", "Test", 0,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, NULL,
        NULL, NULL, NULL);

    hr = FUNC5(hwnd, &DropTarget);
    FUNC8(hr == E_OUTOFMEMORY ||
        FUNC7(hr == CO_E_NOTINITIALIZED), /* NT4 */
        "RegisterDragDrop without OLE initialized should have returned E_OUTOFMEMORY instead of 0x%08x\n", hr);

    FUNC3(NULL);

    hr = FUNC5(hwnd, NULL);
    FUNC8(hr == E_INVALIDARG, "RegisterDragDrop with NULL IDropTarget * should return E_INVALIDARG instead of 0x%08x\n", hr);

    hr = FUNC5(NULL, &DropTarget);
    FUNC8(hr == DRAGDROP_E_INVALIDHWND, "RegisterDragDrop with NULL hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\n", hr);

    hr = FUNC5((HWND)0xdeadbeef, &DropTarget);
    FUNC8(hr == DRAGDROP_E_INVALIDHWND, "RegisterDragDrop with garbage hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\n", hr);

    FUNC8(droptarget_refs == 0, "DropTarget refs should be zero not %d\n", droptarget_refs);
    hr = FUNC5(hwnd, &DropTarget);
    FUNC9(hr, "RegisterDragDrop");
    FUNC8(droptarget_refs >= 1, "DropTarget refs should be at least one\n");

    prop = FUNC2(hwnd, "OleDropTargetInterface");
    FUNC8(prop == &DropTarget, "expected IDropTarget pointer %p, got %p\n", &DropTarget, prop);

    hr = FUNC5(hwnd, &DropTarget);
    FUNC8(hr == DRAGDROP_E_ALREADYREGISTERED, "RegisterDragDrop with already registered hwnd should return DRAGDROP_E_ALREADYREGISTERED instead of 0x%08x\n", hr);

    FUNC8(droptarget_refs >= 1, "DropTarget refs should be at least one\n");
    FUNC4();

    /* Win 8 releases the ref in OleUninitialize() */
    if (droptarget_refs >= 1)
    {
        hr = FUNC6(hwnd);
        FUNC9(hr, "RevokeDragDrop");
        FUNC8(droptarget_refs == 0 ||
           FUNC7(droptarget_refs == 1), /* NT4 */
           "DropTarget refs should be zero not %d\n", droptarget_refs);
    }

    hr = FUNC6(NULL);
    FUNC8(hr == DRAGDROP_E_INVALIDHWND, "RevokeDragDrop with NULL hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\n", hr);

    FUNC1(hwnd);

    /* try to revoke with already destroyed window */
    FUNC3(NULL);

    hwnd = FUNC0("WineOleTestClass", "Test", 0,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, NULL,
        NULL, NULL, NULL);

    hr = FUNC5(hwnd, &DropTarget);
    FUNC8(hr == S_OK, "got 0x%08x\n", hr);

    FUNC1(hwnd);

    hr = FUNC6(hwnd);
    FUNC8(hr == DRAGDROP_E_INVALIDHWND, "got 0x%08x\n", hr);

    FUNC4();
}