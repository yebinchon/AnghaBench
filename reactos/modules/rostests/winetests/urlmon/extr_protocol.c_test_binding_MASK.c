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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IInternetSession ;
typedef  int /*<<< orphan*/  IInternetProtocolEx ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  Abort ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ClassFactory ; 
 int /*<<< orphan*/  Continue ; 
 int /*<<< orphan*/  CreateInstance ; 
 int /*<<< orphan*/  E_ABORT ; 
 int HTTPS_TEST ; 
 int HTTP_TEST ; 
 int /*<<< orphan*/  IID_IInternetBindInfo ; 
 int /*<<< orphan*/  IID_IInternetProtocolEx ; 
 int /*<<< orphan*/  IID_IInternetProtocolSink ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LockRequest ; 
 int /*<<< orphan*/  MimeFilter_LockRequest ; 
 int /*<<< orphan*/  MimeFilter_Terminate ; 
 int /*<<< orphan*/  MimeFilter_UnlockRequest ; 
 int /*<<< orphan*/  Protocol_destructor ; 
 int /*<<< orphan*/  QueryService_InternetProtocol ; 
 int /*<<< orphan*/  ReportData ; 
 int /*<<< orphan*/  ReportProgress_PROTOCOLCLASSID ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetPriority ; 
 int /*<<< orphan*/  Start ; 
 int /*<<< orphan*/  StartEx ; 
 int TEST_BINDING ; 
 int TEST_EMULATEPROT ; 
 int TEST_USEIURI ; 
 int /*<<< orphan*/  Terminate ; 
 int /*<<< orphan*/  UnlockRequest ; 
 int /*<<< orphan*/  Uri_CREATE_FILE_USE_DOS_PATH ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bind_info ; 
 int /*<<< orphan*/ * binding_protocol ; 
 int /*<<< orphan*/  binding_sink ; 
 int /*<<< orphan*/ * binding_urls ; 
 scalar_t__ direct_read ; 
 int /*<<< orphan*/  event_complete ; 
 int /*<<< orphan*/  event_complete2 ; 
 scalar_t__ ex_priority ; 
 scalar_t__ expect_hrResult ; 
 int /*<<< orphan*/ * filtered_protocol ; 
 scalar_t__ impl_protex ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 scalar_t__ mimefilter_test ; 
 int /*<<< orphan*/  FUNC23 (int,char*,...) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  pdata ; 
 int pi ; 
 int /*<<< orphan*/  prot_bind_info ; 
 int prot_state ; 
 int /*<<< orphan*/ * protocol_names ; 
 int /*<<< orphan*/  protocol_sink ; 
 scalar_t__ test_abort ; 

__attribute__((used)) static void FUNC26(int prot, DWORD grf_pi, DWORD test_flags)
{
    IInternetProtocolEx *protocolex = NULL;
    IInternetProtocol *protocol;
    IInternetSession *session;
    IUri *uri = NULL;
    ULONG ref;
    HRESULT hres;

    pi = grf_pi;

    FUNC22(prot, test_flags|TEST_BINDING);

    hres = FUNC24(0, &session, 0);
    FUNC23(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);

    if(test_flags & TEST_EMULATEPROT) {
        hres = FUNC15(session, &ClassFactory, &IID_NULL, protocol_names[prot], 0, NULL, 0);
        FUNC23(hres == S_OK, "RegisterNameSpace failed: %08x\n", hres);
    }

    hres = FUNC14(session, NULL, binding_urls[prot], NULL, NULL, &protocol, 0);
    binding_protocol = protocol;
    FUNC23(hres == S_OK, "CreateBinding failed: %08x\n", hres);
    FUNC23(protocol != NULL, "protocol == NULL\n");

    hres = FUNC9(protocol, &IID_IInternetBindInfo, (void**)&prot_bind_info);
    FUNC23(hres == S_OK, "QueryInterface(IID_IInternetBindInfo) failed: %08x\n", hres);

    hres = FUNC9(protocol, &IID_IInternetProtocolSink, (void**)&binding_sink);
    FUNC23(hres == S_OK, "QueryInterface(IID_IInternetProtocolSink) failed: %08x\n", hres);

    if(test_flags & TEST_USEIURI) {
        hres = FUNC9(protocol, &IID_IInternetProtocolEx, (void**)&protocolex);
        FUNC23(hres == S_OK, "Could not get IInternetProtocolEx iface: %08x\n", hres);

        hres = FUNC25(binding_urls[prot], Uri_CREATE_FILE_USE_DOS_PATH, 0, &uri);
        FUNC23(hres == S_OK, "CreateUri failed: %08x\n", hres);
    }

    ex_priority = 0;
    FUNC19(QueryService_InternetProtocol);
    FUNC19(CreateInstance);
    FUNC19(ReportProgress_PROTOCOLCLASSID);
    FUNC19(SetPriority);
    if(impl_protex)
        FUNC19(StartEx);
    else
        FUNC19(Start);

    expect_hrResult = S_OK;

    if(protocolex) {
        hres = FUNC4(protocolex, uri, &protocol_sink, &bind_info, pi, 0);
        FUNC23(hres == S_OK, "StartEx failed: %08x\n", hres);
    }else {
        hres = FUNC11(protocol, binding_urls[prot], &protocol_sink, &bind_info, pi, 0);
        FUNC23(hres == S_OK, "Start failed: %08x\n", hres);
    }

    FUNC0(QueryService_InternetProtocol);
    FUNC0(CreateInstance);
    FUNC0(ReportProgress_PROTOCOLCLASSID);
    FUNC1(SetPriority); /* IE11 does not call it. */
    if(impl_protex)
        FUNC0(StartEx);
    else
        FUNC0(Start);

    if(protocolex)
        FUNC3(protocolex);
    if(uri)
        FUNC18(uri);

    if(prot == HTTP_TEST || prot == HTTPS_TEST) {
        while(prot_state < 4) {
            FUNC23( FUNC21(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
            if(mimefilter_test && filtered_protocol) {
                FUNC19(Continue);
                FUNC7(filtered_protocol, pdata);
                FUNC0(Continue);
            }else {
                FUNC19(Continue);
                FUNC7(protocol, pdata);
                FUNC0(Continue);
            }
            if(test_abort && prot_state == 2) {
                FUNC19(Abort);
                hres = FUNC6(protocol, E_ABORT, 0);
                FUNC23(hres == S_OK, "Abort failed: %08x\n", hres);
                FUNC0(Abort);

                hres = FUNC6(protocol, E_ABORT, 0);
                FUNC23(hres == S_OK, "Abort failed: %08x\n", hres);
                FUNC20(event_complete2);
                break;
            }
            FUNC20(event_complete2);
        }
        if(direct_read)
            FUNC0(ReportData); /* Set in ReportResult */
        FUNC23( FUNC21(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
    }else {
        if(mimefilter_test)
            FUNC19(MimeFilter_LockRequest);
        else
            FUNC19(LockRequest);
        hres = FUNC8(protocol, 0);
        FUNC23(hres == S_OK, "LockRequest failed: %08x\n", hres);
        if(mimefilter_test)
            FUNC0(MimeFilter_LockRequest);
        else
            FUNC0(LockRequest);

        if(mimefilter_test)
            FUNC19(MimeFilter_UnlockRequest);
        else
            FUNC19(UnlockRequest);
        hres = FUNC13(protocol);
        FUNC23(hres == S_OK, "UnlockRequest failed: %08x\n", hres);
        if(mimefilter_test)
            FUNC0(MimeFilter_UnlockRequest);
        else
            FUNC0(UnlockRequest);
    }

    if(mimefilter_test)
        FUNC19(MimeFilter_Terminate);
    else
        FUNC19(Terminate);
    hres = FUNC12(protocol, 0);
    FUNC23(hres == S_OK, "Terminate failed: %08x\n", hres);
    if(mimefilter_test)
        FUNC1(MimeFilter_Terminate);
    else
        FUNC0(Terminate);

    if(filtered_protocol)
        FUNC10(filtered_protocol);
    FUNC2(prot_bind_info);
    FUNC5(binding_sink);

    FUNC19(Protocol_destructor);
    ref = FUNC10(protocol);
    FUNC23(!ref, "ref=%u, expected 0\n", ref);
    FUNC0(Protocol_destructor);

    if(test_flags & TEST_EMULATEPROT) {
        hres = FUNC17(session, &ClassFactory, protocol_names[prot]);
        FUNC23(hres == S_OK, "UnregisterNameSpace failed: %08x\n", hres);
    }

    FUNC16(session);
}