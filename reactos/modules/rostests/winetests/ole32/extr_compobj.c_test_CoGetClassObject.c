
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int * REFCLSID ;
typedef int * LONG ;
typedef int IUnknown ;
typedef int * HRESULT ;
typedef int * HKEY ;
typedef int HANDLE ;


 int APTTYPEQUALIFIER_NONE ;
 int APTTYPE_CURRENT ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_InProcFreeMarshaler ;
 int CLSID_InternetZoneManager ;
 int COINIT_MULTITHREADED ;
 int * CO_E_NOTINITIALIZED ;
 int * CoGetClassObject (int *,int ,int *,int *,void**) ;
 int CoUninitialize () ;
 int * E_INVALIDARG ;
 int HKEY_CLASSES_ROOT ;
 int HKEY_CURRENT_USER ;
 int IID_IUnknown ;
 int IUnknown_Release (int *) ;
 int KEY_ALL_ACCESS ;
 int RegCloseKey (int *) ;
 int * RegCreateKeyExA (int ,char*,int ,int *,int ,int ,int *,int **,int *) ;
 int * S_OK ;
 int actctx_manifest ;
 int activate_context (int ,int *) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int *) ;
 int pCoInitializeEx (int *,int ) ;
 int pDeactivateActCtx (int ,int ) ;
 int * pRegOverridePredefKey (int ,int *) ;
 int pReleaseActCtx (int ) ;
 int test_apt_type (int ,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CoGetClassObject(void)
{
    HRESULT hr;
    HANDLE handle;
    ULONG_PTR cookie;
    IUnknown *pUnk;
    REFCLSID rclsid = &CLSID_InternetZoneManager;
    HKEY hkey;
    LONG res;

    hr = CoGetClassObject(rclsid, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void **)&pUnk);
    ok(hr == CO_E_NOTINITIALIZED, "CoGetClassObject should have returned CO_E_NOTINITIALIZED instead of 0x%08x\n", hr);
    ok(pUnk == ((void*)0), "CoGetClassObject should have changed the passed in pointer to NULL, instead of %p\n", pUnk);

    hr = CoGetClassObject(rclsid, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, ((void*)0));
    ok(hr == E_INVALIDARG ||
       broken(hr == CO_E_NOTINITIALIZED),
       "CoGetClassObject should have returned E_INVALIDARG instead of 0x%08x\n", hr);

    test_apt_type(APTTYPE_CURRENT, APTTYPEQUALIFIER_NONE);

    if (!pRegOverridePredefKey)
    {
        win_skip("RegOverridePredefKey not available\n");
        return;
    }

    pCoInitializeEx(((void*)0), COINIT_MULTITHREADED);

    hr = CoGetClassObject(rclsid, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void **)&pUnk);
    if (hr == S_OK)
    {
        IUnknown_Release(pUnk);

        res = RegCreateKeyExA(HKEY_CURRENT_USER, "Software\\Classes", 0, ((void*)0), 0,
                             KEY_ALL_ACCESS, ((void*)0), &hkey, ((void*)0));
        ok(!res, "RegCreateKeyEx returned %d\n", res);

        res = pRegOverridePredefKey(HKEY_CLASSES_ROOT, hkey);
        ok(!res, "RegOverridePredefKey returned %d\n", res);

        hr = CoGetClassObject(rclsid, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void **)&pUnk);
        ok(hr == S_OK, "CoGetClassObject should have returned S_OK instead of 0x%08x\n", hr);

        res = pRegOverridePredefKey(HKEY_CLASSES_ROOT, ((void*)0));
        ok(!res, "RegOverridePredefKey returned %d\n", res);

        if (hr == S_OK) IUnknown_Release(pUnk);
        RegCloseKey(hkey);
    }

    hr = CoGetClassObject(&CLSID_InProcFreeMarshaler, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void **)&pUnk);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    IUnknown_Release(pUnk);


    if ((handle = activate_context(actctx_manifest, &cookie)))
    {
        hr = CoGetClassObject(&CLSID_InProcFreeMarshaler, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void **)&pUnk);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        IUnknown_Release(pUnk);

        pDeactivateActCtx(0, cookie);
        pReleaseActCtx(handle);
    }

    CoUninitialize();
}
