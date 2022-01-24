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
typedef  int /*<<< orphan*/  buf ;
typedef  float WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IInternetProtocolInfo ;
typedef  int /*<<< orphan*/  IInternetProtocolEx ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int BINDF_ASYNCHRONOUS ; 
 int BINDF_ASYNCSTORAGE ; 
 int BINDF_FROMURLMON ; 
 int BINDF_NOWRITECACHE ; 
 int BINDF_PULLDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_FtpProtocol ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ E_PENDING ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FTP_TEST ; 
 int /*<<< orphan*/  GetBindInfo ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int /*<<< orphan*/  IID_IInternetProtocolEx ; 
 int /*<<< orphan*/  IID_IInternetProtocolInfo ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,float const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ReportProgress_CONNECTING ; 
 int /*<<< orphan*/  ReportProgress_FINDINGRESOURCE ; 
 int /*<<< orphan*/  ReportProgress_SENDINGREQUEST ; 
 int /*<<< orphan*/  ReportResult ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_STARTDOWNLOADING ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  Switch ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  async_protocol ; 
 int /*<<< orphan*/  bind_info ; 
 int bindf ; 
 int /*<<< orphan*/  event_complete ; 
 scalar_t__ expect_hrResult ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 
 scalar_t__ pCreateUri ; 
 int /*<<< orphan*/  protocol_sink ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static void FUNC20(void)
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

    FUNC19("Testing ftp protocol...\n");

    FUNC14(FTP_TEST, 0);

    bindf = BINDF_ASYNCHRONOUS | BINDF_ASYNCSTORAGE | BINDF_PULLDATA | BINDF_FROMURLMON | BINDF_NOWRITECACHE;
    state = STATE_STARTDOWNLOADING;
    expect_hrResult = E_PENDING;

    hres = FUNC1(&CLSID_FtpProtocol, CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void**)&unk);
    FUNC15(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);
    if(FUNC2(hres))
        return;

    hres = FUNC10(unk, &IID_IInternetProtocolInfo, (void**)&protocol_info);
    FUNC15(hres == E_NOINTERFACE, "Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\n", hres);

    hres = FUNC10(unk, &IID_IClassFactory, (void**)&factory);
    FUNC15(hres == S_OK, "Could not get IClassFactory interface\n");
    FUNC11(unk);
    if(FUNC2(hres))
        return;

    hres = FUNC3(factory, NULL, &IID_IInternetProtocol,
                                        (void**)&async_protocol);
    FUNC4(factory);
    FUNC15(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);

    FUNC17(async_protocol);

    FUNC12(GetBindInfo);
    FUNC12(ReportProgress_FINDINGRESOURCE);
    FUNC12(ReportProgress_CONNECTING);
    FUNC12(ReportProgress_SENDINGREQUEST);
    FUNC12(Switch);

    hres = FUNC9(async_protocol, ftp_urlW, &protocol_sink, &bind_info, 0, 0);
    FUNC15(hres == S_OK, "Start failed: %08x\n", hres);
    FUNC0(GetBindInfo);

    FUNC12(ReportResult);

    hres = FUNC7(async_protocol, buf, 1, &cb);
    FUNC15((hres == E_PENDING && cb==0) ||
       (hres == S_OK && cb==1), "Read failed: %08x (%d bytes)\n", hres, cb);

    FUNC15( FUNC13(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );

    while(1) {
        hres = FUNC7(async_protocol, buf, sizeof(buf), &cb);
        if(hres == E_PENDING)
        {
            DWORD ret = FUNC13(event_complete, 90000);
            FUNC15( ret == WAIT_OBJECT_0, "wait timed out\n" );
            if (ret != WAIT_OBJECT_0) break;
        }
        else
            if(cb == 0) break;
    }

    FUNC15(hres == S_FALSE, "Read failed: %08x\n", hres);
    FUNC0(ReportResult);
    FUNC0(Switch);

    FUNC18(async_protocol);

    if(pCreateUri) {
        IInternetProtocolEx *protocolex;

        hres = FUNC6(async_protocol, &IID_IInternetProtocolEx, (void**)&protocolex);
        FUNC15(hres == S_OK, "Could not get IInternetProtocolEx iface: %08x\n", hres);
        FUNC5(protocolex);
    }

    ref = FUNC8(async_protocol);
    FUNC15(!ref, "ref=%d\n", ref);

    FUNC16(&CLSID_FtpProtocol);
}