
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IBindStatusCallback ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int BINDTEST_EMULATE ;
 int BINDTEST_FILEDWLAPI ;
 int BeginningTransaction ;
 int CHECK_CALLED (int ) ;
 int CLEAR_CALLED (int ) ;
 int DeleteFileA (int ) ;
 scalar_t__ FILE_TEST ;
 int GetBindInfo ;
 scalar_t__ GetLastError () ;
 int GetRootSecurityId ;
 scalar_t__ HTTPS_TEST ;
 scalar_t__ HTTP_TEST ;
 int OnProgress_BEGINDOWNLOADDATA ;
 int OnProgress_CACHEFILENAMEAVAILABLE ;
 int OnProgress_CONNECTING ;
 int OnProgress_DOWNLOADINGDATA ;
 int OnProgress_ENDDOWNLOADDATA ;
 int OnProgress_MIMETYPEAVAILABLE ;
 int OnProgress_SENDINGREQUEST ;
 int OnResponse ;
 int OnStartBinding ;
 int OnStopBinding ;
 int QueryInterface_IHttpNegotiate ;
 int QueryInterface_IHttpNegotiate2 ;
 int QueryInterface_IInternetProtocol ;
 int QueryInterface_IServiceProvider ;
 int QueryInterface_IWindowForBindingUI ;
 int QueryService_IInternetProtocol ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SetPriority ;
 int Start ;
 int TYMED_FILE ;
 scalar_t__ URLDownloadToFileW (int *,int ,int ,int ,int *) ;
 int UnlockRequest ;
 int bsc ;
 int current_url ;
 int dwl_htmlA ;
 int dwl_htmlW ;
 scalar_t__ emulate_protocol ;
 scalar_t__ have_IHttpNegotiate2 ;
 int init_bind_test (scalar_t__,int,int ) ;
 scalar_t__ is_urlmon_protocol (scalar_t__) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ test_protocol ;

__attribute__((used)) static void test_URLDownloadToFile(DWORD prot, BOOL emul)
{
    BOOL res;
    HRESULT hres;

    init_bind_test(prot, BINDTEST_FILEDWLAPI | (emul ? BINDTEST_EMULATE : 0), TYMED_FILE);

    SET_EXPECT(GetBindInfo);
    SET_EXPECT(QueryInterface_IInternetProtocol);
    SET_EXPECT(QueryInterface_IServiceProvider);
    if(!emulate_protocol)
        SET_EXPECT(QueryService_IInternetProtocol);
    SET_EXPECT(OnStartBinding);
    if(emulate_protocol) {
        if(is_urlmon_protocol(test_protocol))
            SET_EXPECT(SetPriority);
        SET_EXPECT(Start);
        SET_EXPECT(UnlockRequest);
    }else {
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST) {
            SET_EXPECT(QueryInterface_IHttpNegotiate);
            SET_EXPECT(BeginningTransaction);
            SET_EXPECT(QueryInterface_IHttpNegotiate2);
            SET_EXPECT(GetRootSecurityId);
            SET_EXPECT(QueryInterface_IWindowForBindingUI);
            SET_EXPECT(OnProgress_CONNECTING);
        }
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST || test_protocol == FILE_TEST)
            SET_EXPECT(OnProgress_SENDINGREQUEST);
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST) {
            SET_EXPECT(QueryInterface_IHttpNegotiate);
            SET_EXPECT(OnResponse);
        }
        SET_EXPECT(OnProgress_MIMETYPEAVAILABLE);
        SET_EXPECT(OnProgress_BEGINDOWNLOADDATA);
        if(test_protocol == FILE_TEST)
            SET_EXPECT(OnProgress_CACHEFILENAMEAVAILABLE);
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST)
            SET_EXPECT(OnProgress_DOWNLOADINGDATA);
        SET_EXPECT(OnProgress_ENDDOWNLOADDATA);
        SET_EXPECT(OnStopBinding);
    }

    hres = URLDownloadToFileW(((void*)0), current_url, dwl_htmlW, 0, (IBindStatusCallback*)&bsc);
    ok(hres == S_OK, "URLDownloadToFile failed: %08x\n", hres);

    CHECK_CALLED(GetBindInfo);
    CHECK_CALLED(QueryInterface_IInternetProtocol);
    if(!emulate_protocol) {
        CHECK_CALLED(QueryInterface_IServiceProvider);
        CHECK_CALLED(QueryService_IInternetProtocol);
    }else {
        CLEAR_CALLED(QueryInterface_IServiceProvider);
    }
    CHECK_CALLED(OnStartBinding);
    if(emulate_protocol) {
        if(is_urlmon_protocol(test_protocol))
            CLEAR_CALLED(SetPriority);
        CHECK_CALLED(Start);
        CHECK_CALLED(UnlockRequest);
    }else {
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST) {
            CHECK_CALLED(QueryInterface_IHttpNegotiate);
            CHECK_CALLED(BeginningTransaction);
            if (have_IHttpNegotiate2)
            {
                CHECK_CALLED(QueryInterface_IHttpNegotiate2);
                CHECK_CALLED(GetRootSecurityId);
            }
            CLEAR_CALLED(QueryInterface_IWindowForBindingUI);
            CLEAR_CALLED(OnProgress_CONNECTING);
        }
        if(test_protocol == FILE_TEST)
            CHECK_CALLED(OnProgress_SENDINGREQUEST);
        else if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST)
            CLEAR_CALLED(OnProgress_SENDINGREQUEST);
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST) {
            CLEAR_CALLED(QueryInterface_IHttpNegotiate);
            CHECK_CALLED(OnResponse);
        }
        CHECK_CALLED(OnProgress_MIMETYPEAVAILABLE);
        CHECK_CALLED(OnProgress_BEGINDOWNLOADDATA);
        if(test_protocol == FILE_TEST)
            CHECK_CALLED(OnProgress_CACHEFILENAMEAVAILABLE);
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST)
            CLEAR_CALLED(OnProgress_DOWNLOADINGDATA);
        CHECK_CALLED(OnProgress_ENDDOWNLOADDATA);
        CHECK_CALLED(OnStopBinding);
    }

    res = DeleteFileA(dwl_htmlA);
    ok(res, "DeleteFile failed: %u\n", GetLastError());

    if(prot != FILE_TEST || emul)
        return;

    hres = URLDownloadToFileW(((void*)0), current_url, dwl_htmlW, 0, ((void*)0));
    ok(hres == S_OK, "URLDownloadToFile failed: %08x\n", hres);

    res = DeleteFileA(dwl_htmlA);
    ok(res, "DeleteFile failed: %u\n", GetLastError());
}
