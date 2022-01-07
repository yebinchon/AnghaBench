
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IWinInetHttpInfo ;
typedef int HRESULT ;
typedef int DWORD ;


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
 int INTERNET_OPTION_HANDLE_TYPE ;
 int IWinInetHttpInfo_QueryInfo (int *,int,int*,int*,int *,int *) ;
 int IWinInetHttpInfo_QueryOption (int *,int ,int*,int*) ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ download_state ;
 int ok (int,char*,int,...) ;
 scalar_t__ test_protocol ;

__attribute__((used)) static void test_WinInetHttpInfo(IWinInetHttpInfo *http_info, DWORD progress)
{
    DWORD status, size;
    HRESULT hres, expect;


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
    hres = IWinInetHttpInfo_QueryInfo(http_info, HTTP_QUERY_STATUS_CODE|HTTP_QUERY_FLAG_NUMBER,
            &status, &size, ((void*)0), ((void*)0));
    ok(hres == expect || ((progress == BINDSTATUS_COOKIE_SENT || progress == BINDSTATUS_PROXYDETECTING) && hres == S_FALSE),
       "progress %u: hres = %x, expected %x\n", progress, hres, expect);
    if(hres == S_OK) {
        if(download_state == BEFORE_DOWNLOAD && progress != BINDSTATUS_MIMETYPEAVAILABLE && progress != BINDSTATUS_DECODING)
            ok(status == 0, "progress %u: status = %d\n", progress, status);
        else
            ok(status == HTTP_STATUS_OK, "progress %u: status = %d\n", progress, status);
        ok(size == sizeof(DWORD), "size = %d\n", size);
    }

    size = sizeof(DWORD);
    hres = IWinInetHttpInfo_QueryOption(http_info, INTERNET_OPTION_HANDLE_TYPE, &status, &size);
    if(test_protocol == FTP_TEST) {
        if(download_state==BEFORE_DOWNLOAD && progress!=BINDSTATUS_MIMETYPEAVAILABLE)
            ok(hres == E_FAIL, "hres = %x\n", hres);
        else
            ok(hres == S_OK, "hres = %x\n", hres);

        if(hres == S_OK)
            ok(status == INTERNET_HANDLE_TYPE_FTP_FILE, "status = %d\n", status);
    } else {
        ok(hres == S_OK, "hres = %x\n", hres);
        ok(status == INTERNET_HANDLE_TYPE_HTTP_REQUEST, "status = %d\n", status);
    }
}
