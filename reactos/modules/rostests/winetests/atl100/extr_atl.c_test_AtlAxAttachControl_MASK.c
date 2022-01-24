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
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WebBrowser ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int E_INVALIDARG ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    HWND hwnd;
    HRESULT hr;
    IUnknown *control, *container;
    LONG val;

    hr = FUNC0(NULL, NULL, NULL);
    FUNC8(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);

    container = (IUnknown *)0xdeadbeef;
    hr = FUNC0(NULL, NULL, &container);
    FUNC8(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC8(container == (IUnknown *)0xdeadbeef,
       "Expected the output container pointer to be untouched, got %p\n", container);

    hwnd = FUNC7();
    hr = FUNC0(NULL, hwnd, NULL);
    FUNC8(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC2(hwnd);

    hwnd = FUNC7();
    container = (IUnknown *)0xdeadbeef;
    hr = FUNC0(NULL, hwnd, &container);
    FUNC8(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC8(container == (IUnknown *)0xdeadbeef, "returned %p\n", container);
    FUNC2(hwnd);

    hr = FUNC1(&CLSID_WebBrowser, NULL, CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER,
                          &IID_IOleObject, (void **)&control);
    FUNC8(hr == S_OK, "Expected CoCreateInstance to return S_OK, got 0x%08x\n", hr);

    if (FUNC3(hr))
    {
        FUNC9("Couldn't obtain a test IOleObject instance\n");
        return;
    }

    hr = FUNC0(control, NULL, NULL);
    FUNC8(hr == S_FALSE, "Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\n", hr);

    container = NULL;
    hr = FUNC0(control, NULL, &container);
    FUNC8(hr == S_FALSE, "Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\n", hr);
    FUNC8(container != NULL, "got %p\n", container);
    FUNC5(container);

    hwnd = FUNC7();
    FUNC6(hwnd, GWLP_USERDATA, 0xdeadbeef);
    hr = FUNC0(control, hwnd, NULL);
    FUNC8(hr == S_OK, "Expected AtlAxAttachControl to return S_OK, got 0x%08x\n", hr);
    val = FUNC4(hwnd, GWLP_USERDATA);
    FUNC8(val == 0xdeadbeef, "returned %08x\n", val);
    FUNC2(hwnd);

    hwnd = FUNC7();
    FUNC6(hwnd, GWLP_USERDATA, 0xdeadbeef);
    container = NULL;
    hr = FUNC0(control, hwnd, &container);
    FUNC8(hr == S_OK, "Expected AtlAxAttachControl to return S_OK, got 0x%08x\n", hr);
    FUNC8(container != NULL, "Expected not NULL!\n");
    FUNC5(container);
    val = FUNC4(hwnd, GWLP_USERDATA);
    FUNC8(val == 0xdeadbeef, "Expected unchanged, returned %08x\n", val);
    FUNC2(hwnd);

    FUNC5(control);
}