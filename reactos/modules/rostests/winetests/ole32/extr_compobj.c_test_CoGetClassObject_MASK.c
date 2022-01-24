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
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int /*<<< orphan*/ * REFCLSID ;
typedef  int /*<<< orphan*/ * LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  APTTYPEQUALIFIER_NONE ; 
 int /*<<< orphan*/  APTTYPE_CURRENT ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_InProcFreeMarshaler ; 
 int /*<<< orphan*/  CLSID_InternetZoneManager ; 
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 int /*<<< orphan*/ * CO_E_NOTINITIALIZED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  actctx_manifest ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    HRESULT hr;
    HANDLE handle;
    ULONG_PTR cookie;
    IUnknown *pUnk;
    REFCLSID rclsid = &CLSID_InternetZoneManager;
    HKEY hkey;
    LONG res;

    hr = FUNC0(rclsid, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void **)&pUnk);
    FUNC7(hr == CO_E_NOTINITIALIZED, "CoGetClassObject should have returned CO_E_NOTINITIALIZED instead of 0x%08x\n", hr);
    FUNC7(pUnk == NULL, "CoGetClassObject should have changed the passed in pointer to NULL, instead of %p\n", pUnk);

    hr = FUNC0(rclsid, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, NULL);
    FUNC7(hr == E_INVALIDARG ||
       FUNC6(hr == CO_E_NOTINITIALIZED), /* win9x */
       "CoGetClassObject should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    FUNC12(APTTYPE_CURRENT, APTTYPEQUALIFIER_NONE);

    if (!&pRegOverridePredefKey)
    {
        FUNC13("RegOverridePredefKey not available\n");
        return;
    }

    FUNC8(NULL, COINIT_MULTITHREADED);

    hr = FUNC0(rclsid, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void **)&pUnk);
    if (hr == S_OK)
    {
        FUNC2(pUnk);

        res = FUNC4(HKEY_CURRENT_USER, "Software\\Classes", 0, NULL, 0,
                             KEY_ALL_ACCESS, NULL, &hkey, NULL);
        FUNC7(!res, "RegCreateKeyEx returned %d\n", res);

        res = FUNC10(HKEY_CLASSES_ROOT, hkey);
        FUNC7(!res, "RegOverridePredefKey returned %d\n", res);

        hr = FUNC0(rclsid, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void **)&pUnk);
        FUNC7(hr == S_OK, "CoGetClassObject should have returned S_OK instead of 0x%08x\n", hr);

        res = FUNC10(HKEY_CLASSES_ROOT, NULL);
        FUNC7(!res, "RegOverridePredefKey returned %d\n", res);

        if (hr == S_OK) FUNC2(pUnk);
        FUNC3(hkey);
    }

    hr = FUNC0(&CLSID_InProcFreeMarshaler, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void **)&pUnk);
    FUNC7(hr == S_OK, "got 0x%08x\n", hr);
    FUNC2(pUnk);

    /* context redefines FreeMarshaler CLSID */
    if ((handle = FUNC5(actctx_manifest, &cookie)))
    {
        hr = FUNC0(&CLSID_InProcFreeMarshaler, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void **)&pUnk);
        FUNC7(hr == S_OK, "got 0x%08x\n", hr);
        FUNC2(pUnk);

        FUNC9(0, cookie);
        FUNC11(handle);
    }

    FUNC1();
}