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
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int BINDTEST_EMULATE ; 
 int BINDTEST_FILEDWLAPI ; 
 int /*<<< orphan*/  BeginningTransaction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FILE_TEST ; 
 int /*<<< orphan*/  GetBindInfo ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  GetRootSecurityId ; 
 scalar_t__ HTTPS_TEST ; 
 scalar_t__ HTTP_TEST ; 
 int /*<<< orphan*/  OnProgress_BEGINDOWNLOADDATA ; 
 int /*<<< orphan*/  OnProgress_CACHEFILENAMEAVAILABLE ; 
 int /*<<< orphan*/  OnProgress_CONNECTING ; 
 int /*<<< orphan*/  OnProgress_DOWNLOADINGDATA ; 
 int /*<<< orphan*/  OnProgress_ENDDOWNLOADDATA ; 
 int /*<<< orphan*/  OnProgress_MIMETYPEAVAILABLE ; 
 int /*<<< orphan*/  OnProgress_SENDINGREQUEST ; 
 int /*<<< orphan*/  OnResponse ; 
 int /*<<< orphan*/  OnStartBinding ; 
 int /*<<< orphan*/  OnStopBinding ; 
 int /*<<< orphan*/  QueryInterface_IHttpNegotiate ; 
 int /*<<< orphan*/  QueryInterface_IHttpNegotiate2 ; 
 int /*<<< orphan*/  QueryInterface_IInternetProtocol ; 
 int /*<<< orphan*/  QueryInterface_IServiceProvider ; 
 int /*<<< orphan*/  QueryInterface_IWindowForBindingUI ; 
 int /*<<< orphan*/  QueryService_IInternetProtocol ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SetPriority ; 
 int /*<<< orphan*/  Start ; 
 int /*<<< orphan*/  TYMED_FILE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UnlockRequest ; 
 int /*<<< orphan*/  bsc ; 
 int /*<<< orphan*/  current_url ; 
 int /*<<< orphan*/  dwl_htmlA ; 
 int /*<<< orphan*/  dwl_htmlW ; 
 scalar_t__ emulate_protocol ; 
 scalar_t__ have_IHttpNegotiate2 ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 scalar_t__ test_protocol ; 

__attribute__((used)) static void FUNC9(DWORD prot, BOOL emul)
{
    BOOL res;
    HRESULT hres;

    FUNC6(prot, BINDTEST_FILEDWLAPI | (emul ? BINDTEST_EMULATE : 0), TYMED_FILE);

    FUNC4(GetBindInfo);
    FUNC4(QueryInterface_IInternetProtocol);
    FUNC4(QueryInterface_IServiceProvider);
    if(!emulate_protocol)
        FUNC4(QueryService_IInternetProtocol);
    FUNC4(OnStartBinding);
    if(emulate_protocol) {
        if(FUNC7(test_protocol))
            FUNC4(SetPriority);
        FUNC4(Start);
        FUNC4(UnlockRequest);
    }else {
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST) {
            FUNC4(QueryInterface_IHttpNegotiate);
            FUNC4(BeginningTransaction);
            FUNC4(QueryInterface_IHttpNegotiate2);
            FUNC4(GetRootSecurityId);
            FUNC4(QueryInterface_IWindowForBindingUI);
            FUNC4(OnProgress_CONNECTING);
        }
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST || test_protocol == FILE_TEST)
            FUNC4(OnProgress_SENDINGREQUEST);
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST) {
            FUNC4(QueryInterface_IHttpNegotiate);
            FUNC4(OnResponse);
        }
        FUNC4(OnProgress_MIMETYPEAVAILABLE);
        FUNC4(OnProgress_BEGINDOWNLOADDATA);
        if(test_protocol == FILE_TEST)
            FUNC4(OnProgress_CACHEFILENAMEAVAILABLE);
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST)
            FUNC4(OnProgress_DOWNLOADINGDATA);
        FUNC4(OnProgress_ENDDOWNLOADDATA);
        FUNC4(OnStopBinding);
    }

    hres = FUNC5(NULL, current_url, dwl_htmlW, 0, (IBindStatusCallback*)&bsc);
    FUNC8(hres == S_OK, "URLDownloadToFile failed: %08x\n", hres);

    FUNC0(GetBindInfo);
    FUNC0(QueryInterface_IInternetProtocol);
    if(!emulate_protocol) {
        FUNC0(QueryInterface_IServiceProvider);
        FUNC0(QueryService_IInternetProtocol);
    }else {
        FUNC1(QueryInterface_IServiceProvider);
    }
    FUNC0(OnStartBinding);
    if(emulate_protocol) {
        if(FUNC7(test_protocol))
            FUNC1(SetPriority); /* Not called by IE11 */
        FUNC0(Start);
        FUNC0(UnlockRequest);
    }else {
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST) {
            FUNC0(QueryInterface_IHttpNegotiate);
            FUNC0(BeginningTransaction);
            if (have_IHttpNegotiate2)
            {
                FUNC0(QueryInterface_IHttpNegotiate2);
                FUNC0(GetRootSecurityId);
            }
            FUNC1(QueryInterface_IWindowForBindingUI);
            FUNC1(OnProgress_CONNECTING);
        }
        if(test_protocol == FILE_TEST)
            FUNC0(OnProgress_SENDINGREQUEST);
        else if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST)
            FUNC1(OnProgress_SENDINGREQUEST); /* not called by IE7 */
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST) {
            FUNC1(QueryInterface_IHttpNegotiate);
            FUNC0(OnResponse);
        }
        FUNC0(OnProgress_MIMETYPEAVAILABLE);
        FUNC0(OnProgress_BEGINDOWNLOADDATA);
        if(test_protocol == FILE_TEST)
            FUNC0(OnProgress_CACHEFILENAMEAVAILABLE);
        if(test_protocol == HTTP_TEST || test_protocol == HTTPS_TEST)
            FUNC1(OnProgress_DOWNLOADINGDATA);
        FUNC0(OnProgress_ENDDOWNLOADDATA);
        FUNC0(OnStopBinding);
    }

    res = FUNC2(dwl_htmlA);
    FUNC8(res, "DeleteFile failed: %u\n", FUNC3());

    if(prot != FILE_TEST || emul)
        return;

    hres = FUNC5(NULL, current_url, dwl_htmlW, 0, NULL);
    FUNC8(hres == S_OK, "URLDownloadToFile failed: %08x\n", hres);

    res = FUNC2(dwl_htmlA);
    FUNC8(res, "DeleteFile failed: %u\n", FUNC3());
}