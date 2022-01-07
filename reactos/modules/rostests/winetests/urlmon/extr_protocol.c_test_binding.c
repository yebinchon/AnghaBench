
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int IUri ;
typedef int IInternetSession ;
typedef int IInternetProtocolEx ;
typedef int IInternetProtocol ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int Abort ;
 int CHECK_CALLED (int ) ;
 int CLEAR_CALLED (int ) ;
 int ClassFactory ;
 int Continue ;
 int CreateInstance ;
 int E_ABORT ;
 int HTTPS_TEST ;
 int HTTP_TEST ;
 int IID_IInternetBindInfo ;
 int IID_IInternetProtocolEx ;
 int IID_IInternetProtocolSink ;
 int IID_NULL ;
 int IInternetBindInfo_Release (int ) ;
 int IInternetProtocolEx_Release (int *) ;
 scalar_t__ IInternetProtocolEx_StartEx (int *,int *,int *,int *,int,int ) ;
 int IInternetProtocolSink_Release (int ) ;
 scalar_t__ IInternetProtocol_Abort (int *,int ,int ) ;
 int IInternetProtocol_Continue (int *,int ) ;
 scalar_t__ IInternetProtocol_LockRequest (int *,int ) ;
 scalar_t__ IInternetProtocol_QueryInterface (int *,int *,void**) ;
 scalar_t__ IInternetProtocol_Release (int *) ;
 scalar_t__ IInternetProtocol_Start (int *,int ,int *,int *,int,int ) ;
 scalar_t__ IInternetProtocol_Terminate (int *,int ) ;
 scalar_t__ IInternetProtocol_UnlockRequest (int *) ;
 scalar_t__ IInternetSession_CreateBinding (int *,int *,int ,int *,int *,int **,int ) ;
 scalar_t__ IInternetSession_RegisterNameSpace (int *,int *,int *,int ,int ,int *,int ) ;
 int IInternetSession_Release (int *) ;
 scalar_t__ IInternetSession_UnregisterNameSpace (int *,int *,int ) ;
 int IUri_Release (int *) ;
 int LockRequest ;
 int MimeFilter_LockRequest ;
 int MimeFilter_Terminate ;
 int MimeFilter_UnlockRequest ;
 int Protocol_destructor ;
 int QueryService_InternetProtocol ;
 int ReportData ;
 int ReportProgress_PROTOCOLCLASSID ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SetEvent (int ) ;
 int SetPriority ;
 int Start ;
 int StartEx ;
 int TEST_BINDING ;
 int TEST_EMULATEPROT ;
 int TEST_USEIURI ;
 int Terminate ;
 int UnlockRequest ;
 int Uri_CREATE_FILE_USE_DOS_PATH ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int bind_info ;
 int * binding_protocol ;
 int binding_sink ;
 int * binding_urls ;
 scalar_t__ direct_read ;
 int event_complete ;
 int event_complete2 ;
 scalar_t__ ex_priority ;
 scalar_t__ expect_hrResult ;
 int * filtered_protocol ;
 scalar_t__ impl_protex ;
 int init_test (int,int) ;
 scalar_t__ mimefilter_test ;
 int ok (int,char*,...) ;
 scalar_t__ pCoInternetGetSession (int ,int **,int ) ;
 scalar_t__ pCreateUri (int ,int ,int ,int **) ;
 int pdata ;
 int pi ;
 int prot_bind_info ;
 int prot_state ;
 int * protocol_names ;
 int protocol_sink ;
 scalar_t__ test_abort ;

__attribute__((used)) static void test_binding(int prot, DWORD grf_pi, DWORD test_flags)
{
    IInternetProtocolEx *protocolex = ((void*)0);
    IInternetProtocol *protocol;
    IInternetSession *session;
    IUri *uri = ((void*)0);
    ULONG ref;
    HRESULT hres;

    pi = grf_pi;

    init_test(prot, test_flags|TEST_BINDING);

    hres = pCoInternetGetSession(0, &session, 0);
    ok(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);

    if(test_flags & TEST_EMULATEPROT) {
        hres = IInternetSession_RegisterNameSpace(session, &ClassFactory, &IID_NULL, protocol_names[prot], 0, ((void*)0), 0);
        ok(hres == S_OK, "RegisterNameSpace failed: %08x\n", hres);
    }

    hres = IInternetSession_CreateBinding(session, ((void*)0), binding_urls[prot], ((void*)0), ((void*)0), &protocol, 0);
    binding_protocol = protocol;
    ok(hres == S_OK, "CreateBinding failed: %08x\n", hres);
    ok(protocol != ((void*)0), "protocol == NULL\n");

    hres = IInternetProtocol_QueryInterface(protocol, &IID_IInternetBindInfo, (void**)&prot_bind_info);
    ok(hres == S_OK, "QueryInterface(IID_IInternetBindInfo) failed: %08x\n", hres);

    hres = IInternetProtocol_QueryInterface(protocol, &IID_IInternetProtocolSink, (void**)&binding_sink);
    ok(hres == S_OK, "QueryInterface(IID_IInternetProtocolSink) failed: %08x\n", hres);

    if(test_flags & TEST_USEIURI) {
        hres = IInternetProtocol_QueryInterface(protocol, &IID_IInternetProtocolEx, (void**)&protocolex);
        ok(hres == S_OK, "Could not get IInternetProtocolEx iface: %08x\n", hres);

        hres = pCreateUri(binding_urls[prot], Uri_CREATE_FILE_USE_DOS_PATH, 0, &uri);
        ok(hres == S_OK, "CreateUri failed: %08x\n", hres);
    }

    ex_priority = 0;
    SET_EXPECT(QueryService_InternetProtocol);
    SET_EXPECT(CreateInstance);
    SET_EXPECT(ReportProgress_PROTOCOLCLASSID);
    SET_EXPECT(SetPriority);
    if(impl_protex)
        SET_EXPECT(StartEx);
    else
        SET_EXPECT(Start);

    expect_hrResult = S_OK;

    if(protocolex) {
        hres = IInternetProtocolEx_StartEx(protocolex, uri, &protocol_sink, &bind_info, pi, 0);
        ok(hres == S_OK, "StartEx failed: %08x\n", hres);
    }else {
        hres = IInternetProtocol_Start(protocol, binding_urls[prot], &protocol_sink, &bind_info, pi, 0);
        ok(hres == S_OK, "Start failed: %08x\n", hres);
    }

    CHECK_CALLED(QueryService_InternetProtocol);
    CHECK_CALLED(CreateInstance);
    CHECK_CALLED(ReportProgress_PROTOCOLCLASSID);
    CLEAR_CALLED(SetPriority);
    if(impl_protex)
        CHECK_CALLED(StartEx);
    else
        CHECK_CALLED(Start);

    if(protocolex)
        IInternetProtocolEx_Release(protocolex);
    if(uri)
        IUri_Release(uri);

    if(prot == HTTP_TEST || prot == HTTPS_TEST) {
        while(prot_state < 4) {
            ok( WaitForSingleObject(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
            if(mimefilter_test && filtered_protocol) {
                SET_EXPECT(Continue);
                IInternetProtocol_Continue(filtered_protocol, pdata);
                CHECK_CALLED(Continue);
            }else {
                SET_EXPECT(Continue);
                IInternetProtocol_Continue(protocol, pdata);
                CHECK_CALLED(Continue);
            }
            if(test_abort && prot_state == 2) {
                SET_EXPECT(Abort);
                hres = IInternetProtocol_Abort(protocol, E_ABORT, 0);
                ok(hres == S_OK, "Abort failed: %08x\n", hres);
                CHECK_CALLED(Abort);

                hres = IInternetProtocol_Abort(protocol, E_ABORT, 0);
                ok(hres == S_OK, "Abort failed: %08x\n", hres);
                SetEvent(event_complete2);
                break;
            }
            SetEvent(event_complete2);
        }
        if(direct_read)
            CHECK_CALLED(ReportData);
        ok( WaitForSingleObject(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
    }else {
        if(mimefilter_test)
            SET_EXPECT(MimeFilter_LockRequest);
        else
            SET_EXPECT(LockRequest);
        hres = IInternetProtocol_LockRequest(protocol, 0);
        ok(hres == S_OK, "LockRequest failed: %08x\n", hres);
        if(mimefilter_test)
            CHECK_CALLED(MimeFilter_LockRequest);
        else
            CHECK_CALLED(LockRequest);

        if(mimefilter_test)
            SET_EXPECT(MimeFilter_UnlockRequest);
        else
            SET_EXPECT(UnlockRequest);
        hres = IInternetProtocol_UnlockRequest(protocol);
        ok(hres == S_OK, "UnlockRequest failed: %08x\n", hres);
        if(mimefilter_test)
            CHECK_CALLED(MimeFilter_UnlockRequest);
        else
            CHECK_CALLED(UnlockRequest);
    }

    if(mimefilter_test)
        SET_EXPECT(MimeFilter_Terminate);
    else
        SET_EXPECT(Terminate);
    hres = IInternetProtocol_Terminate(protocol, 0);
    ok(hres == S_OK, "Terminate failed: %08x\n", hres);
    if(mimefilter_test)
        CLEAR_CALLED(MimeFilter_Terminate);
    else
        CHECK_CALLED(Terminate);

    if(filtered_protocol)
        IInternetProtocol_Release(filtered_protocol);
    IInternetBindInfo_Release(prot_bind_info);
    IInternetProtocolSink_Release(binding_sink);

    SET_EXPECT(Protocol_destructor);
    ref = IInternetProtocol_Release(protocol);
    ok(!ref, "ref=%u, expected 0\n", ref);
    CHECK_CALLED(Protocol_destructor);

    if(test_flags & TEST_EMULATEPROT) {
        hres = IInternetSession_UnregisterNameSpace(session, &ClassFactory, protocol_names[prot]);
        ok(hres == S_OK, "UnregisterNameSpace failed: %08x\n", hres);
    }

    IInternetSession_Release(session);
}
