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
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  APTTYPEQUALIFIER_NONE ; 
 int /*<<< orphan*/  APTTYPE_CURRENT ; 
 int /*<<< orphan*/  CLSCTX_INPROC_HANDLER ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSCTX_REMOTE_SERVER ; 
 int /*<<< orphan*/  CLSID_InternetZoneManager ; 
 int /*<<< orphan*/  CLSID_non_existent ; 
 int /*<<< orphan*/ * CO_E_NOTINITIALIZED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * REGDB_E_CLASSNOTREG ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT hr;
    IUnknown *pUnk;
    REFCLSID rclsid = &CLSID_InternetZoneManager;

    pUnk = (IUnknown *)0xdeadbeef;
    hr = FUNC0(rclsid, NULL, CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&pUnk);
    FUNC4(hr == CO_E_NOTINITIALIZED, "CoCreateInstance should have returned CO_E_NOTINITIALIZED instead of 0x%08x\n", hr);
    FUNC4(pUnk == NULL, "CoCreateInstance should have changed the passed in pointer to NULL, instead of %p\n", pUnk);

    FUNC2(NULL);

    /* test errors returned for non-registered clsids */
    hr = FUNC0(&CLSID_non_existent, NULL, CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&pUnk);
    FUNC4(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance for non-registered inproc server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\n", hr);
    hr = FUNC0(&CLSID_non_existent, NULL, CLSCTX_INPROC_HANDLER, &IID_IUnknown, (void **)&pUnk);
    FUNC4(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance for non-registered inproc handler should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\n", hr);
    hr = FUNC0(&CLSID_non_existent, NULL, CLSCTX_LOCAL_SERVER, &IID_IUnknown, (void **)&pUnk);
    FUNC4(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance for non-registered local server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\n", hr);
    hr = FUNC0(&CLSID_non_existent, NULL, CLSCTX_REMOTE_SERVER, &IID_IUnknown, (void **)&pUnk);
    FUNC4(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance for non-registered remote server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\n", hr);

    hr = FUNC0(rclsid, NULL, CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&pUnk);
    if(hr == REGDB_E_CLASSNOTREG)
    {
        FUNC6("IE not installed so can't test CoCreateInstance\n");
        FUNC3();
        return;
    }

    FUNC5(hr, "CoCreateInstance");
    if(pUnk) FUNC1(pUnk);
    FUNC3();

    hr = FUNC0(rclsid, NULL, CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&pUnk);
    FUNC4(hr == CO_E_NOTINITIALIZED, "CoCreateInstance should have returned CO_E_NOTINITIALIZED instead of 0x%08x\n", hr);

    FUNC7(APTTYPE_CURRENT, APTTYPEQUALIFIER_NONE);
}