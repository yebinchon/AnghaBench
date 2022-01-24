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
typedef  int /*<<< orphan*/  IWinInetHttpInfo ;
typedef  int HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ BEFORE_DOWNLOAD ; 
 int BINDSTATUS_COOKIE_SENT ; 
 int BINDSTATUS_DECODING ; 
 int BINDSTATUS_MIMETYPEAVAILABLE ; 
 int BINDSTATUS_PROXYDETECTING ; 
 int BINDSTATUS_SENDINGREQUEST ; 
 int E_FAIL ; 
 scalar_t__ FTP_TEST ; 
 int HTTP_QUERY_FLAG_NUMBER ; 
 int HTTP_QUERY_STATUS_CODE ; 
 int HTTP_STATUS_OK ; 
 int INTERNET_HANDLE_TYPE_FTP_FILE ; 
 int INTERNET_HANDLE_TYPE_HTTP_REQUEST ; 
 int /*<<< orphan*/  INTERNET_OPTION_HANDLE_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*) ; 
 int S_FALSE ; 
 int S_OK ; 
 scalar_t__ download_state ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,...) ; 
 scalar_t__ test_protocol ; 

__attribute__((used)) static void FUNC3(IWinInetHttpInfo *http_info, DWORD progress)
{
    DWORD status, size;
    HRESULT hres, expect;

    /* QueryInfo changes its behavior during this request */
    if(progress == BINDSTATUS_SENDINGREQUEST)
        return;

    if(test_protocol==FTP_TEST && download_state==BEFORE_DOWNLOAD
            && progress!=BINDSTATUS_MIMETYPEAVAILABLE)
        expect = E_FAIL;
    else if(test_protocol == FTP_TEST)
        expect = S_FALSE;
    else
        expect = S_OK;

    size = sizeof(DWORD);
    hres = FUNC0(http_info, HTTP_QUERY_STATUS_CODE|HTTP_QUERY_FLAG_NUMBER,
            &status, &size, NULL, NULL);
    FUNC2(hres == expect || ((progress == BINDSTATUS_COOKIE_SENT || progress == BINDSTATUS_PROXYDETECTING) && hres == S_FALSE),
       "progress %u: hres = %x, expected %x\n", progress, hres, expect);
    if(hres == S_OK) {
        if(download_state == BEFORE_DOWNLOAD && progress != BINDSTATUS_MIMETYPEAVAILABLE && progress != BINDSTATUS_DECODING)
            FUNC2(status == 0, "progress %u: status = %d\n", progress, status);
        else
            FUNC2(status == HTTP_STATUS_OK, "progress %u: status = %d\n", progress, status);
        FUNC2(size == sizeof(DWORD), "size = %d\n", size);
    }

    size = sizeof(DWORD);
    hres = FUNC1(http_info, INTERNET_OPTION_HANDLE_TYPE, &status, &size);
    if(test_protocol == FTP_TEST) {
        if(download_state==BEFORE_DOWNLOAD && progress!=BINDSTATUS_MIMETYPEAVAILABLE)
            FUNC2(hres == E_FAIL, "hres = %x\n", hres);
        else
            FUNC2(hres == S_OK, "hres = %x\n", hres);

        if(hres == S_OK)
            FUNC2(status == INTERNET_HANDLE_TYPE_FTP_FILE, "status = %d\n", status);
    } else {
        FUNC2(hres == S_OK, "hres = %x\n", hres);
        FUNC2(status == INTERNET_HANDLE_TYPE_HTTP_REQUEST, "status = %d\n", status);
    }
}