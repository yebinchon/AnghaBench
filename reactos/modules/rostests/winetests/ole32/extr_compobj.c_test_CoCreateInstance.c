
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * REFCLSID ;
typedef int IUnknown ;
typedef int * HRESULT ;


 int APTTYPEQUALIFIER_NONE ;
 int APTTYPE_CURRENT ;
 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSCTX_REMOTE_SERVER ;
 int CLSID_InternetZoneManager ;
 int CLSID_non_existent ;
 int * CO_E_NOTINITIALIZED ;
 int * CoCreateInstance (int *,int *,int ,int *,void**) ;
 int IID_IUnknown ;
 int IUnknown_Release (int *) ;
 int OleInitialize (int *) ;
 int OleUninitialize () ;
 int * REGDB_E_CLASSNOTREG ;
 int ok (int,char*,int *) ;
 int ok_ole_success (int *,char*) ;
 int skip (char*) ;
 int test_apt_type (int ,int ) ;

__attribute__((used)) static void test_CoCreateInstance(void)
{
    HRESULT hr;
    IUnknown *pUnk;
    REFCLSID rclsid = &CLSID_InternetZoneManager;

    pUnk = (IUnknown *)0xdeadbeef;
    hr = CoCreateInstance(rclsid, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&pUnk);
    ok(hr == CO_E_NOTINITIALIZED, "CoCreateInstance should have returned CO_E_NOTINITIALIZED instead of 0x%08x\n", hr);
    ok(pUnk == ((void*)0), "CoCreateInstance should have changed the passed in pointer to NULL, instead of %p\n", pUnk);

    OleInitialize(((void*)0));


    hr = CoCreateInstance(&CLSID_non_existent, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&pUnk);
    ok(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance for non-registered inproc server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\n", hr);
    hr = CoCreateInstance(&CLSID_non_existent, ((void*)0), CLSCTX_INPROC_HANDLER, &IID_IUnknown, (void **)&pUnk);
    ok(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance for non-registered inproc handler should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\n", hr);
    hr = CoCreateInstance(&CLSID_non_existent, ((void*)0), CLSCTX_LOCAL_SERVER, &IID_IUnknown, (void **)&pUnk);
    ok(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance for non-registered local server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\n", hr);
    hr = CoCreateInstance(&CLSID_non_existent, ((void*)0), CLSCTX_REMOTE_SERVER, &IID_IUnknown, (void **)&pUnk);
    ok(hr == REGDB_E_CLASSNOTREG, "CoCreateInstance for non-registered remote server should have returned REGDB_E_CLASSNOTREG instead of 0x%08x\n", hr);

    hr = CoCreateInstance(rclsid, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&pUnk);
    if(hr == REGDB_E_CLASSNOTREG)
    {
        skip("IE not installed so can't test CoCreateInstance\n");
        OleUninitialize();
        return;
    }

    ok_ole_success(hr, "CoCreateInstance");
    if(pUnk) IUnknown_Release(pUnk);
    OleUninitialize();

    hr = CoCreateInstance(rclsid, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IUnknown, (void **)&pUnk);
    ok(hr == CO_E_NOTINITIALIZED, "CoCreateInstance should have returned CO_E_NOTINITIALIZED instead of 0x%08x\n", hr);

    test_apt_type(APTTYPE_CURRENT, APTTYPEQUALIFIER_NONE);
}
