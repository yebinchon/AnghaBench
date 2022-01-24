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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_WebBrowser ; 
 int /*<<< orphan*/  CW_USEDEFAULT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * S_FALSE ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HWND hwnd = FUNC1("WineAtlTestClass", "Wine ATL Test Window", 0,
                              CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
                              CW_USEDEFAULT, NULL, NULL, NULL, NULL);
    HRESULT hr;
    IUnknown *pObj, *pContainer;

    hr = FUNC6(NULL, NULL, NULL);
    FUNC5(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);

    pContainer = (IUnknown *)0xdeadbeef;
    hr = FUNC6(NULL, NULL, &pContainer);
    FUNC5(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);
    FUNC5(pContainer == (IUnknown *)0xdeadbeef,
       "Expected the output container pointer to be untouched, got %p\n", pContainer);

    hr = FUNC6(NULL, hwnd, NULL);
    FUNC5(hr == E_INVALIDARG, "Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\n", hr);

    hr = FUNC0(&CLSID_WebBrowser, NULL, CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER,
                          &IID_IOleObject, (void **)&pObj);
    FUNC5(hr == S_OK, "Expected CoCreateInstance to return S_OK, got 0x%08x\n", hr);

    if (FUNC3(hr))
    {
        FUNC7("Couldn't obtain a test IOleObject instance\n");
        return;
    }

    hr = FUNC6(pObj, NULL, NULL);
    FUNC5(hr == S_FALSE, "Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\n", hr);

    pContainer = NULL;
    hr = FUNC6(pObj, NULL, &pContainer);
    FUNC5(hr == S_FALSE, "Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\n", hr);
    FUNC5(pContainer != NULL, "got %p\n", pContainer);
    FUNC4(pContainer);

    hr = FUNC6(pObj, hwnd, NULL);
    FUNC5(hr == S_OK, "Expected AtlAxAttachControl to return S_OK, got 0x%08x\n", hr);

    FUNC4(pObj);

    FUNC2(hwnd);
}