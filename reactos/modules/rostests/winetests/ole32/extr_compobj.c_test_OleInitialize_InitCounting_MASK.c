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
typedef  int /*<<< orphan*/ * REFCLSID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_InternetZoneManager ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 scalar_t__ CO_E_NOTINITIALIZED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ RPC_E_CHANGED_MODE ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT hr;
    IUnknown *pUnk;
    REFCLSID rclsid = &CLSID_InternetZoneManager;

    /* 1. OleInitialize fails but OleUninitialize is still called: apartment stays initialized */
    hr = FUNC7(NULL, COINIT_MULTITHREADED);
    FUNC6(hr == S_OK, "CoInitializeEx(COINIT_MULTITHREADED) failed with error 0x%08x\n", hr);

    hr = FUNC4(NULL);
    FUNC6(hr == RPC_E_CHANGED_MODE, "OleInitialize should have returned 0x%08x instead of 0x%08x\n", RPC_E_CHANGED_MODE, hr);
    FUNC5();

    pUnk = (IUnknown *)0xdeadbeef;
    hr = FUNC0(rclsid, NULL, 0x17, &IID_IUnknown, (void **)&pUnk);
    FUNC6(hr == S_OK, "CoCreateInstance should have returned 0x%08x instead of 0x%08x\n", S_OK, hr);
    if (pUnk) FUNC3(pUnk);

    FUNC2();

    /* 2. Extra multiple OleUninitialize: apartment stays initialized until CoUninitialize */
    hr = FUNC1(NULL);
    FUNC6(hr == S_OK, "CoInitialize() failed with error 0x%08x\n", hr);

    hr = FUNC4(NULL);
    FUNC6(hr == S_OK, "OleInitialize should have returned 0x%08x instead of 0x%08x\n", S_OK, hr);
    FUNC5();
    FUNC5();
    FUNC5();

    pUnk = (IUnknown *)0xdeadbeef;
    hr = FUNC0(rclsid, NULL, 0x17, &IID_IUnknown, (void **)&pUnk);
    FUNC6(hr == S_OK, "CoCreateInstance should have returned 0x%08x instead of 0x%08x\n", S_OK, hr);
    if (pUnk) FUNC3(pUnk);

    FUNC2();

    pUnk = (IUnknown *)0xdeadbeef;
    hr = FUNC0(rclsid, NULL, 0x17, &IID_IUnknown, (void **)&pUnk);
    FUNC6(hr == CO_E_NOTINITIALIZED, "CoCreateInstance should have returned 0x%08x instead of 0x%08x\n", CO_E_NOTINITIALIZED, hr);
    if (pUnk) FUNC3(pUnk);

    /* 3. CoUninitialize does not formally deinit Ole */
    hr = FUNC1(NULL);
    FUNC6(hr == S_OK, "CoInitialize() failed with error 0x%08x\n", hr);

    hr = FUNC4(NULL);
    FUNC6(hr == S_OK, "OleInitialize should have returned 0x%08x instead of 0x%08x\n", S_OK, hr);

    FUNC2();
    FUNC2();

    pUnk = (IUnknown *)0xdeadbeef;
    hr = FUNC0(rclsid, NULL, 0x17, &IID_IUnknown, (void **)&pUnk);
    FUNC6(hr == CO_E_NOTINITIALIZED, "CoCreateInstance should have returned 0x%08x instead of 0x%08x\n", CO_E_NOTINITIALIZED, hr);
      /* COM is not initialized anymore */
    if (pUnk) FUNC3(pUnk);

    hr = FUNC4(NULL);
    FUNC6(hr == S_FALSE, "OleInitialize should have returned 0x%08x instead of 0x%08x\n", S_FALSE, hr);
      /* ... but native OleInit returns S_FALSE as if Ole is considered initialized */

    FUNC5();

}