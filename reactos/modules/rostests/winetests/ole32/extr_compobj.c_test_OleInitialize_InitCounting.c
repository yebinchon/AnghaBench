
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * REFCLSID ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 int CLSID_InternetZoneManager ;
 int COINIT_MULTITHREADED ;
 scalar_t__ CO_E_NOTINITIALIZED ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ CoInitialize (int *) ;
 int CoUninitialize () ;
 int IID_IUnknown ;
 int IUnknown_Release (int *) ;
 scalar_t__ OleInitialize (int *) ;
 int OleUninitialize () ;
 scalar_t__ RPC_E_CHANGED_MODE ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCoInitializeEx (int *,int ) ;

__attribute__((used)) static void test_OleInitialize_InitCounting(void)
{
    HRESULT hr;
    IUnknown *pUnk;
    REFCLSID rclsid = &CLSID_InternetZoneManager;


    hr = pCoInitializeEx(((void*)0), COINIT_MULTITHREADED);
    ok(hr == S_OK, "CoInitializeEx(COINIT_MULTITHREADED) failed with error 0x%08x\n", hr);

    hr = OleInitialize(((void*)0));
    ok(hr == RPC_E_CHANGED_MODE, "OleInitialize should have returned 0x%08x instead of 0x%08x\n", RPC_E_CHANGED_MODE, hr);
    OleUninitialize();

    pUnk = (IUnknown *)0xdeadbeef;
    hr = CoCreateInstance(rclsid, ((void*)0), 0x17, &IID_IUnknown, (void **)&pUnk);
    ok(hr == S_OK, "CoCreateInstance should have returned 0x%08x instead of 0x%08x\n", S_OK, hr);
    if (pUnk) IUnknown_Release(pUnk);

    CoUninitialize();


    hr = CoInitialize(((void*)0));
    ok(hr == S_OK, "CoInitialize() failed with error 0x%08x\n", hr);

    hr = OleInitialize(((void*)0));
    ok(hr == S_OK, "OleInitialize should have returned 0x%08x instead of 0x%08x\n", S_OK, hr);
    OleUninitialize();
    OleUninitialize();
    OleUninitialize();

    pUnk = (IUnknown *)0xdeadbeef;
    hr = CoCreateInstance(rclsid, ((void*)0), 0x17, &IID_IUnknown, (void **)&pUnk);
    ok(hr == S_OK, "CoCreateInstance should have returned 0x%08x instead of 0x%08x\n", S_OK, hr);
    if (pUnk) IUnknown_Release(pUnk);

    CoUninitialize();

    pUnk = (IUnknown *)0xdeadbeef;
    hr = CoCreateInstance(rclsid, ((void*)0), 0x17, &IID_IUnknown, (void **)&pUnk);
    ok(hr == CO_E_NOTINITIALIZED, "CoCreateInstance should have returned 0x%08x instead of 0x%08x\n", CO_E_NOTINITIALIZED, hr);
    if (pUnk) IUnknown_Release(pUnk);


    hr = CoInitialize(((void*)0));
    ok(hr == S_OK, "CoInitialize() failed with error 0x%08x\n", hr);

    hr = OleInitialize(((void*)0));
    ok(hr == S_OK, "OleInitialize should have returned 0x%08x instead of 0x%08x\n", S_OK, hr);

    CoUninitialize();
    CoUninitialize();

    pUnk = (IUnknown *)0xdeadbeef;
    hr = CoCreateInstance(rclsid, ((void*)0), 0x17, &IID_IUnknown, (void **)&pUnk);
    ok(hr == CO_E_NOTINITIALIZED, "CoCreateInstance should have returned 0x%08x instead of 0x%08x\n", CO_E_NOTINITIALIZED, hr);

    if (pUnk) IUnknown_Release(pUnk);

    hr = OleInitialize(((void*)0));
    ok(hr == S_FALSE, "OleInitialize should have returned 0x%08x instead of 0x%08x\n", S_FALSE, hr);


    OleUninitialize();

}
