
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int szPostData ;
typedef int szContentType ;
struct TYPE_3__ {int dwStructSize; char const* lpcszHeader; int dwHeadersLength; int dwHeadersTotal; char* lpvBuffer; int dwBufferLength; int dwBufferTotal; scalar_t__ dwOffsetHigh; scalar_t__ dwOffsetLow; struct TYPE_3__* Next; } ;
typedef TYPE_1__ INTERNET_BUFFERSA ;
typedef int * HINTERNET ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ CHAR ;
typedef int BufferIn ;
typedef int BOOL ;


 scalar_t__ ERROR_INTERNET_NAME_NOT_RESOLVED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int HttpEndRequestA (int *,int *,int ,int ) ;
 int * HttpOpenRequestA (int *,char*,char*,int *,int *,int *,int ,int ) ;
 int HttpSendRequestExA (int *,TYPE_1__*,int *,int ,int ) ;
 int INTERNET_DEFAULT_HTTP_PORT ;
 int INTERNET_FLAG_NO_CACHE_WRITE ;
 int INTERNET_OPEN_TYPE_PRECONFIG ;
 int INTERNET_REQFLAG_NO_HEADERS ;
 int INTERNET_SERVICE_HTTP ;
 int InternetCloseHandle (int *) ;
 int * InternetConnectA (int *,char*,int ,int *,int *,int ,int ,int ) ;
 int * InternetOpenA (char*,int ,int *,int *,int ) ;
 int InternetReadFile (int *,scalar_t__*,int,scalar_t__*) ;
 int InternetWriteFile (int *,char*,int,scalar_t__*) ;
 int SetLastError (int) ;
 scalar_t__ broken (int ) ;
 int ok (int,char*,...) ;
 int proxy_active () ;
 int skip (char*) ;
 scalar_t__ strncmp (scalar_t__*,char*,scalar_t__) ;
 int test_request_flags (int *,int ) ;

__attribute__((used)) static void HttpSendRequestEx_test(void)
{
    HINTERNET hSession;
    HINTERNET hConnect;
    HINTERNET hRequest;

    INTERNET_BUFFERSA BufferIn;
    DWORD dwBytesWritten, dwBytesRead, error;
    CHAR szBuffer[256];
    int i;
    BOOL ret;

    static char szPostData[] = "mode=Test";
    static const char szContentType[] = "Content-Type: application/x-www-form-urlencoded";

    hSession = InternetOpenA("Wine Regression Test",
            INTERNET_OPEN_TYPE_PRECONFIG,((void*)0),((void*)0),0);
    ok( hSession != ((void*)0) ,"Unable to open Internet session\n");
    hConnect = InternetConnectA(hSession, "test.winehq.org",
            INTERNET_DEFAULT_HTTP_PORT, ((void*)0), ((void*)0), INTERNET_SERVICE_HTTP, 0,
            0);
    ok( hConnect != ((void*)0), "Unable to connect to http://test.winehq.org\n");
    hRequest = HttpOpenRequestA(hConnect, "POST", "/tests/post.php",
            ((void*)0), ((void*)0), ((void*)0), INTERNET_FLAG_NO_CACHE_WRITE, 0);
    if (!hRequest && GetLastError() == ERROR_INTERNET_NAME_NOT_RESOLVED)
    {
        skip( "Network unreachable, skipping test\n" );
        goto done;
    }
    ok( hRequest != ((void*)0), "Failed to open request handle err %u\n", GetLastError());

    test_request_flags(hRequest, INTERNET_REQFLAG_NO_HEADERS);

    BufferIn.dwStructSize = sizeof(BufferIn);
    BufferIn.Next = (INTERNET_BUFFERSA*)0xdeadcab;
    BufferIn.lpcszHeader = szContentType;
    BufferIn.dwHeadersLength = sizeof(szContentType)-1;
    BufferIn.dwHeadersTotal = sizeof(szContentType)-1;
    BufferIn.lpvBuffer = szPostData;
    BufferIn.dwBufferLength = 3;
    BufferIn.dwBufferTotal = sizeof(szPostData)-1;
    BufferIn.dwOffsetLow = 0;
    BufferIn.dwOffsetHigh = 0;

    SetLastError(0xdeadbeef);
    ret = HttpSendRequestExA(hRequest, &BufferIn, ((void*)0), 0 ,0);
    error = GetLastError();
    ok(ret, "HttpSendRequestEx Failed with error %u\n", error);
    ok(error == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", error);

    test_request_flags(hRequest, INTERNET_REQFLAG_NO_HEADERS);

    for (i = 3; szPostData[i]; i++)
        ok(InternetWriteFile(hRequest, &szPostData[i], 1, &dwBytesWritten),
                "InternetWriteFile failed\n");

    test_request_flags(hRequest, INTERNET_REQFLAG_NO_HEADERS);

    ok(HttpEndRequestA(hRequest, ((void*)0), 0, 0), "HttpEndRequest Failed\n");

    test_request_flags(hRequest, 0);

    ok(InternetReadFile(hRequest, szBuffer, 255, &dwBytesRead),
            "Unable to read response\n");
    szBuffer[dwBytesRead] = 0;

    ok(dwBytesRead == 13,"Read %u bytes instead of 13\n",dwBytesRead);
    ok(strncmp(szBuffer,"mode => Test\n",dwBytesRead)==0 || broken(proxy_active()),"Got string %s\n",szBuffer);

    ok(InternetCloseHandle(hRequest), "Close request handle failed\n");
done:
    ok(InternetCloseHandle(hConnect), "Close connect handle failed\n");
    ok(InternetCloseHandle(hSession), "Close session handle failed\n");
}
