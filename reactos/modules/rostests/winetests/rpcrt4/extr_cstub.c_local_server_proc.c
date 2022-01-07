
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IPSFactoryBuffer ;
typedef scalar_t__ HRESULT ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int CLSCTX_INPROC_SERVER ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSID_test1 ;
 int CLSID_test_ps ;
 int CoInitialize (int *) ;
 scalar_t__ CoRegisterClassObject (int *,int *,int ,int ,scalar_t__*) ;
 scalar_t__ CoRegisterPSClsid (int *,int *) ;
 scalar_t__ CoRevokeClassObject (scalar_t__) ;
 int CoUninitialize () ;
 scalar_t__ CoWaitForMultipleHandles (int ,int,int,int *,scalar_t__*) ;
 int EVENT_ALL_ACCESS ;
 int ExitProcess (int ) ;
 int FALSE ;
 int IID_IPSFactoryBuffer ;
 int IID_ITest1 ;
 scalar_t__ NdrDllGetClassObject (int *,int *,void**,int *,int *,int *) ;
 int OpenEventA (int ,int ,char*) ;
 int REGCLS_MULTIPLEUSE ;
 scalar_t__ S_OK ;
 int SetEvent (int ) ;
 int aProxyFileList ;
 int gPFactory ;
 int ok (int,char*,scalar_t__) ;
 int test_cf ;

__attribute__((used)) static void local_server_proc(void)
{
    DWORD obj_cookie, ps_cookie, index;
    HANDLE stop_event, ready_event;
    IPSFactoryBuffer *ps;
    HRESULT hr;

    stop_event = OpenEventA(EVENT_ALL_ACCESS, FALSE, "wine_cstub_test_server_stop");
    ready_event = OpenEventA(EVENT_ALL_ACCESS, FALSE, "wine_cstub_test_server_ready");

    CoInitialize(((void*)0));

    hr = CoRegisterClassObject(&CLSID_test1, (IUnknown *)&test_cf,
        CLSCTX_LOCAL_SERVER, REGCLS_MULTIPLEUSE, &obj_cookie);
    ok(hr == S_OK, "got %#x\n", hr);

    hr = NdrDllGetClassObject(&CLSID_test_ps, &IID_IPSFactoryBuffer, (void **)&ps,
        &aProxyFileList, &CLSID_test_ps, &gPFactory);
    ok(hr == S_OK, "got %#x\n", hr);

    hr = CoRegisterClassObject(&CLSID_test_ps, (IUnknown *)ps,
        CLSCTX_INPROC_SERVER, REGCLS_MULTIPLEUSE, &ps_cookie);
    ok(hr == S_OK, "got %#x\n", hr);

    hr = CoRegisterPSClsid(&IID_ITest1, &CLSID_test_ps);
    ok(hr == S_OK, "got %#x\n", hr);

    SetEvent(ready_event);

    hr = CoWaitForMultipleHandles(0, 1000, 1, &stop_event, &index);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(!index, "got %u\n", index);

    hr = CoRevokeClassObject(ps_cookie);
    ok(hr == S_OK, "got %#x\n", hr);

    hr = CoRevokeClassObject(obj_cookie);
    ok(hr == S_OK, "got %#x\n", hr);

    CoUninitialize();
    ExitProcess(0);
}
