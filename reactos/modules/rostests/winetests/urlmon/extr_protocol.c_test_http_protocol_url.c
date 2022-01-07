
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ ULONG ;
typedef int LPCWSTR ;
typedef int IUnknown ;
typedef int IInternetProtocolInfo ;
typedef int IClassFactory ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int BINDF_FROMURLMON ;
 int BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS ;
 int CHECK_CALLED (int ) ;
 int CHECK_NOT_CALLED (int ) ;
 int CLEAR_CALLED (int ) ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_HttpProtocol ;
 int CLSID_HttpSProtocol ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 int DeleteUrlCacheEntryW (int ) ;
 scalar_t__ E_ABORT ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ E_PENDING ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ GetLastError () ;
 int HTTPS_TEST ;
 int HTTP_TEST ;
 scalar_t__ IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IInternetProtocol ;
 int IID_IInternetProtocolInfo ;
 int IID_IUnknown ;
 scalar_t__ IInternetProtocol_Abort (int ,scalar_t__,int ) ;
 scalar_t__ IInternetProtocol_Read (int ,int *,int,int*) ;
 scalar_t__ IInternetProtocol_Release (int ) ;
 scalar_t__ INET_E_REDIRECT_FAILED ;
 scalar_t__ INET_E_RESULT_DISPATCHED ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int OnResponse ;
 int QueryService_HttpSecurity ;
 int ReportData ;
 int ReportProgress_CACHEFILENAMEAVAILABLE ;
 int ReportProgress_CONNECTING ;
 int ReportProgress_COOKIE_SENT ;
 int ReportProgress_FINDINGRESOURCE ;
 int ReportProgress_PROXYDETECTING ;
 int ReportProgress_RAWMIMETYPE ;
 int ReportProgress_REDIRECTING ;
 int ReportProgress_SENDINGREQUEST ;
 int ReportResult ;
 int SET_EXPECT (int ) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int SetEvent (int ) ;
 int Switch ;
 int TEST_DISABLEAUTOREDIRECT ;
 int TEST_FROMCACHE ;
 int TEST_USEIURI ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int async_protocol ;
 scalar_t__ bind_from_cache ;
 int bindf ;
 int bindinfo_options ;
 int call_continue (int *) ;
 int continue_protdata ;
 int create_cache_entry (int ) ;
 scalar_t__ direct_read ;
 int event_complete ;
 int event_continue ;
 int event_continue_done ;
 scalar_t__ expect_hrResult ;
 scalar_t__ http_is_first ;
 int http_post_test ;
 int http_protocol_start (int ,int) ;
 int http_url ;
 int init_test (int,int) ;
 int ok (int,char*,...) ;
 scalar_t__ test_abort ;
 int test_priority (int ) ;
 int test_protocol_terminate (int ) ;
 scalar_t__ test_redirect ;
 scalar_t__ wait_for_switch ;

__attribute__((used)) static void test_http_protocol_url(LPCWSTR url, int prot, DWORD flags, DWORD tymed)
{
    IInternetProtocolInfo *protocol_info;
    IClassFactory *factory;
    IUnknown *unk;
    HRESULT hres;

    init_test(prot, flags);
    http_url = url;
    http_post_test = tymed;
    if(flags & TEST_FROMCACHE)
        create_cache_entry(url);

    hres = CoGetClassObject(prot == HTTPS_TEST ? &CLSID_HttpSProtocol : &CLSID_HttpProtocol,
            CLSCTX_INPROC_SERVER, ((void*)0), &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "CoGetClassObject failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IUnknown_QueryInterface(unk, &IID_IInternetProtocolInfo, (void**)&protocol_info);
    ok(hres == E_NOINTERFACE,
        "Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\n",
        hres);

    hres = IUnknown_QueryInterface(unk, &IID_IClassFactory, (void**)&factory);
    ok(hres == S_OK, "Could not get IClassFactory interface\n");
    IUnknown_Release(unk);
    if(FAILED(hres))
        return;

    hres = IClassFactory_CreateInstance(factory, ((void*)0), &IID_IInternetProtocol,
                                        (void**)&async_protocol);
    ok(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(SUCCEEDED(hres)) {
        BYTE buf[3600];
        DWORD cb;
        ULONG ref;

        test_priority(async_protocol);

        SET_EXPECT(ReportProgress_COOKIE_SENT);
        if(http_is_first) {
            SET_EXPECT(ReportProgress_FINDINGRESOURCE);
            SET_EXPECT(ReportProgress_CONNECTING);
        }
        SET_EXPECT(ReportProgress_SENDINGREQUEST);
        if(test_redirect && !(bindinfo_options & BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS))
            SET_EXPECT(ReportProgress_REDIRECTING);
        SET_EXPECT(ReportProgress_PROXYDETECTING);
        if(prot == HTTP_TEST)
            SET_EXPECT(ReportProgress_CACHEFILENAMEAVAILABLE);
        else
            SET_EXPECT(QueryService_HttpSecurity);
        if(!(bindf & BINDF_FROMURLMON)) {
            SET_EXPECT(OnResponse);
            SET_EXPECT(ReportProgress_RAWMIMETYPE);
            SET_EXPECT(ReportData);
        } else {
            SET_EXPECT(Switch);
        }

        if(!http_protocol_start(url, (flags & TEST_USEIURI) != 0)) {
            IInternetProtocol_Abort(async_protocol, E_ABORT, 0);
            IInternetProtocol_Release(async_protocol);
            return;
        }

        if(!direct_read && !test_abort && !bind_from_cache)
            SET_EXPECT(ReportResult);

        if(flags & TEST_DISABLEAUTOREDIRECT)
            expect_hrResult = INET_E_REDIRECT_FAILED;
        else if(test_abort)
            expect_hrResult = E_ABORT;
        else
            expect_hrResult = S_OK;

        if(direct_read) {
            SET_EXPECT(Switch);
            while(wait_for_switch) {
                ok( WaitForSingleObject(event_continue, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
                CHECK_CALLED(Switch);
                call_continue(&continue_protdata);
                SetEvent(event_continue_done);
            }
        }else if(bind_from_cache) {
            BYTE buf[1500];

            hres = IInternetProtocol_Read(async_protocol, buf, 100, &cb);
            ok(hres == S_OK && cb == 100, "Read failed: %08x (%d bytes)\n", hres, cb);

            SET_EXPECT(ReportResult);
            hres = IInternetProtocol_Read(async_protocol, buf, sizeof(buf), &cb);
            ok(hres == S_OK && cb == 900, "Read failed: %08x (%d bytes)\n", hres, cb);
            CHECK_CALLED(ReportResult);

            hres = IInternetProtocol_Read(async_protocol, buf, sizeof(buf), &cb);
            ok(hres == S_FALSE && !cb, "Read failed: %08x (%d bytes)\n", hres, cb);
        }else {
            hres = IInternetProtocol_Read(async_protocol, buf, 1, &cb);
            ok((hres == E_PENDING && cb==0) ||
               (hres == S_OK && cb==1), "Read failed: %08x (%d bytes)\n", hres, cb);

            ok( WaitForSingleObject(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
            if(bindf & BINDF_FROMURLMON)
                CHECK_CALLED(Switch);
            else
                CHECK_CALLED(ReportData);
            if(prot == HTTPS_TEST)
                CLEAR_CALLED(QueryService_HttpSecurity);

            while(1) {
                if(bindf & BINDF_FROMURLMON)
                    SET_EXPECT(Switch);
                else
                    SET_EXPECT(ReportData);
                hres = IInternetProtocol_Read(async_protocol, buf, sizeof(buf), &cb);
                if(hres == E_PENDING) {
                    hres = IInternetProtocol_Read(async_protocol, buf, 1, &cb);
                    ok((hres == E_PENDING && cb==0) ||
                       (hres == S_OK && cb==1), "Read failed: %08x (%d bytes)\n", hres, cb);
                    ok( WaitForSingleObject(event_complete, 90000) == WAIT_OBJECT_0, "wait timed out\n" );
                    if(bindf & BINDF_FROMURLMON)
                        CHECK_CALLED(Switch);
                    else
                        CHECK_CALLED(ReportData);

                    if(test_abort) {
                        HRESULT hres;

                        SET_EXPECT(ReportResult);
                        hres = IInternetProtocol_Abort(async_protocol, E_ABORT, 0);
                        ok(hres == S_OK, "Abort failed: %08x\n", hres);
                        CHECK_CALLED(ReportResult);

                        hres = IInternetProtocol_Abort(async_protocol, E_ABORT, 0);
                        ok(hres == INET_E_RESULT_DISPATCHED || hres == S_OK , "Abort failed: %08x\n", hres);
                        break;
                    }
                }else {
                    if(bindf & BINDF_FROMURLMON)
                        CHECK_NOT_CALLED(Switch);
                    else
                        CHECK_NOT_CALLED(ReportData);
                    if(cb == 0) break;
                }
            }
            if(!test_abort) {
                ok(hres == S_FALSE, "Read failed: %08x\n", hres);
                CHECK_CALLED(ReportResult);
            }
        }
        if(prot == HTTPS_TEST)
            CLEAR_CALLED(ReportProgress_SENDINGREQUEST);

        if (prot == HTTP_TEST || prot == HTTPS_TEST)
            CLEAR_CALLED(ReportProgress_COOKIE_SENT);

        hres = IInternetProtocol_Abort(async_protocol, E_ABORT, 0);
        ok(hres == INET_E_RESULT_DISPATCHED || hres == S_OK , "Abort failed: %08x\n", hres);

        test_protocol_terminate(async_protocol);

        hres = IInternetProtocol_Abort(async_protocol, E_ABORT, 0);
        ok(hres == S_OK, "Abort failed: %08x\n", hres);

        ref = IInternetProtocol_Release(async_protocol);
        ok(!ref, "ref=%x\n", ref);
    }

    IClassFactory_Release(factory);

    if(flags & TEST_FROMCACHE) {
        BOOL res;

        res = DeleteUrlCacheEntryW(url);
        ok(res, "DeleteUrlCacheEntryA failed: %u\n", GetLastError());
    }
}
