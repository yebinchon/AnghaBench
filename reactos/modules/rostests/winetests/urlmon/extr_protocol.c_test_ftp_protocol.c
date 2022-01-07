
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef float WCHAR ;
typedef scalar_t__ ULONG ;
typedef int IUnknown ;
typedef int IInternetProtocolInfo ;
typedef int IInternetProtocolEx ;
typedef int IClassFactory ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int BINDF_ASYNCHRONOUS ;
 int BINDF_ASYNCSTORAGE ;
 int BINDF_FROMURLMON ;
 int BINDF_NOWRITECACHE ;
 int BINDF_PULLDATA ;
 int CHECK_CALLED (int ) ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_FtpProtocol ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ E_PENDING ;
 scalar_t__ FAILED (scalar_t__) ;
 int FTP_TEST ;
 int GetBindInfo ;
 scalar_t__ IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IInternetProtocol ;
 int IID_IInternetProtocolEx ;
 int IID_IInternetProtocolInfo ;
 int IID_IUnknown ;
 int IInternetProtocolEx_Release (int *) ;
 scalar_t__ IInternetProtocol_QueryInterface (int ,int *,void**) ;
 scalar_t__ IInternetProtocol_Read (int ,int *,int,int*) ;
 scalar_t__ IInternetProtocol_Release (int ) ;
 scalar_t__ IInternetProtocol_Start (int ,float const*,int *,int *,int ,int ) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int ReportProgress_CONNECTING ;
 int ReportProgress_FINDINGRESOURCE ;
 int ReportProgress_SENDINGREQUEST ;
 int ReportResult ;
 int SET_EXPECT (int ) ;
 int STATE_STARTDOWNLOADING ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int Switch ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int async_protocol ;
 int bind_info ;
 int bindf ;
 int event_complete ;
 scalar_t__ expect_hrResult ;
 int init_test (int ,int ) ;
 int ok (int,char*,...) ;
 scalar_t__ pCreateUri ;
 int protocol_sink ;
 int state ;
 int test_early_abort (int *) ;
 int test_priority (int ) ;
 int test_protocol_terminate (int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_ftp_protocol(void)
{
    IInternetProtocolInfo *protocol_info;
    IClassFactory *factory;
    IUnknown *unk;
    BYTE buf[4096];
    ULONG ref;
    DWORD cb;
    HRESULT hres;

    static const WCHAR ftp_urlW[] = {'f','t','p',':','/','/','f','t','p','.','w','i','n','e','h','q','.','o','r','g',
    '/','p','u','b','/','o','t','h','e','r','/',
    'w','i','n','e','l','o','g','o','.','x','c','f','.','t','a','r','.','b','z','2',0};

    trace("Testing ftp protocol...\n");

    init_test(FTP_TEST, 0);

    bindf = BINDF_ASYNCHRONOUS | BINDF_ASYNCSTORAGE | BINDF_PULLDATA | BINDF_FROMURLMON | BINDF_NOWRITECACHE;
    state = STATE_STARTDOWNLOADING;
    expect_hrResult = E_PENDING;

    hres = CoGetClassObject(&CLSID_FtpProtocol, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IUnknown_QueryInterface(unk, &IID_IInternetProtocolInfo, (void**)&protocol_info);
    ok(hres == E_NOINTERFACE, "Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\n", hres);

    hres = IUnknown_QueryInterface(unk, &IID_IClassFactory, (void**)&factory);
    ok(hres == S_OK, "Could not get IClassFactory interface\n");
    IUnknown_Release(unk);
    if(FAILED(hres))
        return;

    hres = IClassFactory_CreateInstance(factory, ((void*)0), &IID_IInternetProtocol,
                                        (void**)&async_protocol);
    IClassFactory_Release(factory);
    ok(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);

    test_priority(async_protocol);

    SET_EXPECT(GetBindInfo);
    SET_EXPECT(ReportProgress_FINDINGRESOURCE);
    SET_EXPECT(ReportProgress_CONNECTING);
    SET_EXPECT(ReportProgress_SENDINGREQUEST);
    SET_EXPECT(Switch);

    hres = IInternetProtocol_Start(async_protocol, ftp_urlW, &protocol_sink, &bind_info, 0, 0);
    ok(hres == S_OK, "Start failed: %08x\n", hres);
    CHECK_CALLED(GetBindInfo);

    SET_EXPECT(ReportResult);

    hres = IInternetProtocol_Read(async_protocol, buf, 1, &cb);
    ok((hres == E_PENDING && cb==0) ||
       (hres == S_OK && cb==1), "Read failed: %08x (%d bytes)\n", hres, cb);

    ok( WaitForSingleObject(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );

    while(1) {
        hres = IInternetProtocol_Read(async_protocol, buf, sizeof(buf), &cb);
        if(hres == E_PENDING)
        {
            DWORD ret = WaitForSingleObject(event_complete, 90000);
            ok( ret == WAIT_OBJECT_0, "wait timed out\n" );
            if (ret != WAIT_OBJECT_0) break;
        }
        else
            if(cb == 0) break;
    }

    ok(hres == S_FALSE, "Read failed: %08x\n", hres);
    CHECK_CALLED(ReportResult);
    CHECK_CALLED(Switch);

    test_protocol_terminate(async_protocol);

    if(pCreateUri) {
        IInternetProtocolEx *protocolex;

        hres = IInternetProtocol_QueryInterface(async_protocol, &IID_IInternetProtocolEx, (void**)&protocolex);
        ok(hres == S_OK, "Could not get IInternetProtocolEx iface: %08x\n", hres);
        IInternetProtocolEx_Release(protocolex);
    }

    ref = IInternetProtocol_Release(async_protocol);
    ok(!ref, "ref=%d\n", ref);

    test_early_abort(&CLSID_FtpProtocol);
}
