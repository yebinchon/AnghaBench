
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int ITest1 ;
typedef int IPSFactoryBuffer ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int CLSID ;


 int CLSCTX_INPROC_SERVER ;
 int CLSCTX_LOCAL_SERVER ;
 int CLSID_test1 ;
 int CLSID_test_ps ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoRegisterClassObject (int *,int *,int ,int ,int *) ;
 int CoRegisterPSClsid (int *,int *) ;
 int CoRevokeClassObject (int ) ;
 int CreateEventA (int *,int ,int ,char*) ;
 int FALSE ;
 int IID_IPSFactoryBuffer ;
 int IID_ITest1 ;
 int ITest1_GetClassID (int *,int *) ;
 int ITest1_Release (int *) ;
 int ITest1_square (int *,int) ;
 int IsEqualGUID (int *,int *) ;
 int NdrDllGetClassObject (int *,int *,void**,int *,int *,int *) ;
 int REGCLS_MULTIPLEUSE ;
 int S_OK ;
 int SetEvent (int ) ;
 int TRUE ;
 int WaitForSingleObject (int ,int) ;
 int aProxyFileList ;
 int create_process (char*) ;
 int gPFactory ;
 int ok (int,char*,...) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_delegated_methods(void)
{
    HANDLE process, stop_event, ready_event;
    IPSFactoryBuffer *ps;
    ITest1 *test_obj;
    DWORD ps_cookie;
    CLSID clsid;
    HRESULT hr;
    int ret;

    stop_event = CreateEventA(((void*)0), TRUE, FALSE, "wine_cstub_test_server_stop");
    ready_event = CreateEventA(((void*)0), TRUE, FALSE, "wine_cstub_test_server_ready");

    process = create_process("server");
    ok(!WaitForSingleObject(ready_event, 1000), "wait failed\n");

    hr = NdrDllGetClassObject(&CLSID_test_ps, &IID_IPSFactoryBuffer, (void **)&ps,
        &aProxyFileList, &CLSID_test_ps, &gPFactory);
    ok(hr == S_OK, "got %#x\n", hr);

    hr = CoRegisterClassObject(&CLSID_test_ps, (IUnknown *)ps,
        CLSCTX_INPROC_SERVER, REGCLS_MULTIPLEUSE, &ps_cookie);
    ok(hr == S_OK, "got %#x\n", hr);

    hr = CoRegisterPSClsid(&IID_ITest1, &CLSID_test_ps);
    ok(hr == S_OK, "got %#x\n", hr);

    hr = CoCreateInstance(&CLSID_test1, ((void*)0), CLSCTX_LOCAL_SERVER, &IID_ITest1, (void **)&test_obj);
    ok(hr == S_OK, "got %#x\n", hr);

    ret = ITest1_square(test_obj, 3);
    ok(ret == 9, "got %d\n", ret);

    hr = ITest1_GetClassID(test_obj, &clsid);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(IsEqualGUID(&clsid, &CLSID_test1), "got %s\n", wine_dbgstr_guid(&clsid));

    ITest1_Release(test_obj);

    SetEvent(stop_event);
    ok(!WaitForSingleObject(process, 1000), "wait failed\n");

    hr = CoRevokeClassObject(ps_cookie);
    ok(hr == S_OK, "got %#x\n", hr);
}
