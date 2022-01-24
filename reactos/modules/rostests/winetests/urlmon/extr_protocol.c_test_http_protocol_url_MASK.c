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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IInternetProtocolInfo ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int BINDF_FROMURLMON ; 
 int BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_HttpProtocol ; 
 int /*<<< orphan*/  CLSID_HttpSProtocol ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ E_ABORT ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ E_PENDING ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 int HTTPS_TEST ; 
 int HTTP_TEST ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int /*<<< orphan*/  IID_IInternetProtocolInfo ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ INET_E_REDIRECT_FAILED ; 
 scalar_t__ INET_E_RESULT_DISPATCHED ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OnResponse ; 
 int /*<<< orphan*/  QueryService_HttpSecurity ; 
 int /*<<< orphan*/  ReportData ; 
 int /*<<< orphan*/  ReportProgress_CACHEFILENAMEAVAILABLE ; 
 int /*<<< orphan*/  ReportProgress_CONNECTING ; 
 int /*<<< orphan*/  ReportProgress_COOKIE_SENT ; 
 int /*<<< orphan*/  ReportProgress_FINDINGRESOURCE ; 
 int /*<<< orphan*/  ReportProgress_PROXYDETECTING ; 
 int /*<<< orphan*/  ReportProgress_RAWMIMETYPE ; 
 int /*<<< orphan*/  ReportProgress_REDIRECTING ; 
 int /*<<< orphan*/  ReportProgress_SENDINGREQUEST ; 
 int /*<<< orphan*/  ReportResult ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Switch ; 
 int TEST_DISABLEAUTOREDIRECT ; 
 int TEST_FROMCACHE ; 
 int TEST_USEIURI ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  async_protocol ; 
 scalar_t__ bind_from_cache ; 
 int bindf ; 
 int bindinfo_options ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  continue_protdata ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ direct_read ; 
 int /*<<< orphan*/  event_complete ; 
 int /*<<< orphan*/  event_continue ; 
 int /*<<< orphan*/  event_continue_done ; 
 scalar_t__ expect_hrResult ; 
 scalar_t__ http_is_first ; 
 int http_post_test ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  http_url ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,...) ; 
 scalar_t__ test_abort ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ test_redirect ; 
 scalar_t__ wait_for_switch ; 

__attribute__((used)) static void FUNC25(LPCWSTR url, int prot, DWORD flags, DWORD tymed)
{
    IInternetProtocolInfo *protocol_info;
    IClassFactory *factory;
    IUnknown *unk;
    HRESULT hres;

    FUNC21(prot, flags);
    http_url = url;
    http_post_test = tymed;
    if(flags & TEST_FROMCACHE)
        FUNC19(url);

    hres = FUNC3(prot == HTTPS_TEST ? &CLSID_HttpSProtocol : &CLSID_HttpProtocol,
            CLSCTX_INPROC_SERVER, NULL, &IID_IUnknown, (void**)&unk);
    FUNC22(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);
    if(FUNC5(hres))
        return;

    hres = FUNC12(unk, &IID_IInternetProtocolInfo, (void**)&protocol_info);
    FUNC22(hres == E_NOINTERFACE,
        "Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\n",
        hres);

    hres = FUNC12(unk, &IID_IClassFactory, (void**)&factory);
    FUNC22(hres == S_OK, "Could not get IClassFactory interface\n");
    FUNC13(unk);
    if(FUNC5(hres))
        return;

    hres = FUNC7(factory, NULL, &IID_IInternetProtocol,
                                        (void**)&async_protocol);
    FUNC22(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(FUNC15(hres)) {
        BYTE buf[3600];
        DWORD cb;
        ULONG ref;

        FUNC23(async_protocol);

        FUNC14(ReportProgress_COOKIE_SENT);
        if(http_is_first) {
            FUNC14(ReportProgress_FINDINGRESOURCE);
            FUNC14(ReportProgress_CONNECTING);
        }
        FUNC14(ReportProgress_SENDINGREQUEST);
        if(test_redirect && !(bindinfo_options & BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS))
            FUNC14(ReportProgress_REDIRECTING);
        FUNC14(ReportProgress_PROXYDETECTING);
        if(prot == HTTP_TEST)
            FUNC14(ReportProgress_CACHEFILENAMEAVAILABLE);
        else
            FUNC14(QueryService_HttpSecurity);
        if(!(bindf & BINDF_FROMURLMON)) {
            FUNC14(OnResponse);
            FUNC14(ReportProgress_RAWMIMETYPE);
            FUNC14(ReportData);
        } else {
            FUNC14(Switch);
        }

        if(!FUNC20(url, (flags & TEST_USEIURI) != 0)) {
            FUNC9(async_protocol, E_ABORT, 0);
            FUNC11(async_protocol);
            return;
        }

        if(!direct_read && !test_abort && !bind_from_cache)
            FUNC14(ReportResult);

        if(flags & TEST_DISABLEAUTOREDIRECT)
            expect_hrResult = INET_E_REDIRECT_FAILED;
        else if(test_abort)
            expect_hrResult = E_ABORT;
        else
            expect_hrResult = S_OK;

        if(direct_read) {
            FUNC14(Switch);
            while(wait_for_switch) {
                FUNC22( FUNC17(event_continue, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
                FUNC0(Switch); /* Set in ReportData */
                FUNC18(&continue_protdata);
                FUNC16(event_continue_done);
            }
        }else if(bind_from_cache) {
            BYTE buf[1500];

            hres = FUNC10(async_protocol, buf, 100, &cb);
            FUNC22(hres == S_OK && cb == 100, "Read failed: %08x (%d bytes)\n", hres, cb);

            FUNC14(ReportResult);
            hres = FUNC10(async_protocol, buf, sizeof(buf), &cb);
            FUNC22(hres == S_OK && cb == 900, "Read failed: %08x (%d bytes)\n", hres, cb);
            FUNC0(ReportResult);

            hres = FUNC10(async_protocol, buf, sizeof(buf), &cb);
            FUNC22(hres == S_FALSE && !cb, "Read failed: %08x (%d bytes)\n", hres, cb);
        }else {
            hres = FUNC10(async_protocol, buf, 1, &cb);
            FUNC22((hres == E_PENDING && cb==0) ||
               (hres == S_OK && cb==1), "Read failed: %08x (%d bytes)\n", hres, cb);

            FUNC22( FUNC17(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
            if(bindf & BINDF_FROMURLMON)
                FUNC0(Switch);
            else
                FUNC0(ReportData);
            if(prot == HTTPS_TEST)
                FUNC2(QueryService_HttpSecurity);

            while(1) {
                if(bindf & BINDF_FROMURLMON)
                    FUNC14(Switch);
                else
                    FUNC14(ReportData);
                hres = FUNC10(async_protocol, buf, sizeof(buf), &cb);
                if(hres == E_PENDING) {
                    hres = FUNC10(async_protocol, buf, 1, &cb);
                    FUNC22((hres == E_PENDING && cb==0) ||
                       (hres == S_OK && cb==1), "Read failed: %08x (%d bytes)\n", hres, cb);
                    FUNC22( FUNC17(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
                    if(bindf & BINDF_FROMURLMON)
                        FUNC0(Switch);
                    else
                        FUNC0(ReportData);

                    if(test_abort) {
                        HRESULT hres;

                        FUNC14(ReportResult);
                        hres = FUNC9(async_protocol, E_ABORT, 0);
                        FUNC22(hres == S_OK, "Abort failed: %08x\n", hres);
                        FUNC0(ReportResult);

                        hres = FUNC9(async_protocol, E_ABORT, 0);
                        FUNC22(hres == INET_E_RESULT_DISPATCHED || hres == S_OK /* IE10 */, "Abort failed: %08x\n", hres);
                        break;
                    }
                }else {
                    if(bindf & BINDF_FROMURLMON)
                        FUNC1(Switch);
                    else
                        FUNC1(ReportData);
                    if(cb == 0) break;
                }
            }
            if(!test_abort) {
                FUNC22(hres == S_FALSE, "Read failed: %08x\n", hres);
                FUNC0(ReportResult);
            }
        }
        if(prot == HTTPS_TEST)
            FUNC2(ReportProgress_SENDINGREQUEST);

        if (prot == HTTP_TEST || prot == HTTPS_TEST)
            FUNC2(ReportProgress_COOKIE_SENT);

        hres = FUNC9(async_protocol, E_ABORT, 0);
        FUNC22(hres == INET_E_RESULT_DISPATCHED || hres == S_OK /* IE10 */, "Abort failed: %08x\n", hres);

        FUNC24(async_protocol);

        hres = FUNC9(async_protocol, E_ABORT, 0);
        FUNC22(hres == S_OK, "Abort failed: %08x\n", hres);

        ref = FUNC11(async_protocol);
        FUNC22(!ref, "ref=%x\n", ref);
    }

    FUNC8(factory);

    if(flags & TEST_FROMCACHE) {
        BOOL res;

        res = FUNC4(url);
        FUNC22(res, "DeleteUrlCacheEntryA failed: %u\n", FUNC6());
    }
}