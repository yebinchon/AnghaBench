
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_post ;
typedef int post_data ;
typedef int disable ;
typedef int context ;
typedef int buffer ;
typedef char WCHAR ;
typedef int * HINTERNET ;
typedef int DWORD_PTR ;
typedef scalar_t__ DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_NO_TOKEN ;
 int ERROR_SUCCESS ;
 scalar_t__ ERROR_WINHTTP_CANNOT_CONNECT ;
 int ERROR_WINHTTP_NAME_NOT_RESOLVED ;
 scalar_t__ ERROR_WINHTTP_TIMEOUT ;
 int GetLastError () ;
 int INTERNET_DEFAULT_HTTP_PORT ;
 int SetLastError (int) ;
 int TRUE ;
 int WINHTTP_ACCESS_TYPE_DEFAULT_PROXY ;
 int WINHTTP_DEFAULT_ACCEPT_TYPES ;
 scalar_t__ WINHTTP_DISABLE_KEEP_ALIVE ;
 int WINHTTP_FLAG_BYPASS_PROXY_CACHE ;
 int WINHTTP_NO_PROXY_BYPASS ;
 int WINHTTP_NO_PROXY_NAME ;
 int WINHTTP_NO_REFERER ;
 int WINHTTP_OPTION_CONTEXT_VALUE ;
 int WINHTTP_OPTION_DISABLE_FEATURE ;
 int WinHttpCloseHandle (int *) ;
 int * WinHttpConnect (int *,int ,int ,int ) ;
 int * WinHttpOpen (int ,int ,int ,int ,int ) ;
 int * WinHttpOpenRequest (int *,char const*,char const*,int *,int ,int ,int ) ;
 int WinHttpQueryOption (int *,int ,int*,scalar_t__*) ;
 int WinHttpReadData (int *,char*,int,scalar_t__*) ;
 int WinHttpReceiveResponse (int *,int *) ;
 int WinHttpSendRequest (int *,char const*,scalar_t__,char*,scalar_t__,scalar_t__,int) ;
 int WinHttpSetOption (int *,int ,...) ;
 int WinHttpWriteData (int *,char*,int,scalar_t__*) ;
 scalar_t__ broken (int) ;
 int memcmp (char*,char const*,int) ;
 int memset (char*,int,int) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int test_useragent ;
 int test_winehq ;

__attribute__((used)) static void test_SendRequest (void)
{
    static const WCHAR content_type[] =
        {'C','o','n','t','e','n','t','-','T','y','p','e',':',' ','a','p','p','l','i','c','a','t','i','o','n',
         '/','x','-','w','w','w','-','f','o','r','m','-','u','r','l','e','n','c','o','d','e','d',0};
    static const WCHAR test_file[] = {'t','e','s','t','s','/','p','o','s','t','.','p','h','p',0};
    static const WCHAR test_verb[] = {'P','O','S','T',0};
    static CHAR post_data[] = "mode=Test";
    static const char test_post[] = "mode => Test\0\n";
    HINTERNET session, request, connection;
    DWORD header_len, optional_len, total_len, bytes_rw, size, err, disable;
    DWORD_PTR context;
    BOOL ret;
    CHAR buffer[256];
    int i;

    header_len = -1L;
    total_len = optional_len = sizeof(post_data);
    memset(buffer, 0xff, sizeof(buffer));

    session = WinHttpOpen(test_useragent, WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
        WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
    ok(session != ((void*)0), "WinHttpOpen failed to open session.\n");

    connection = WinHttpConnect (session, test_winehq, INTERNET_DEFAULT_HTTP_PORT, 0);
    ok(connection != ((void*)0), "WinHttpConnect failed to open a connection, error: %u.\n", GetLastError());

    request = WinHttpOpenRequest(connection, test_verb, test_file, ((void*)0), WINHTTP_NO_REFERER,
        WINHTTP_DEFAULT_ACCEPT_TYPES, WINHTTP_FLAG_BYPASS_PROXY_CACHE);
    if (request == ((void*)0) && GetLastError() == ERROR_WINHTTP_NAME_NOT_RESOLVED)
    {
        skip("Network unreachable, skipping.\n");
        goto done;
    }
    ok(request != ((void*)0), "WinHttpOpenrequest failed to open a request, error: %u.\n", GetLastError());
    if (!request) goto done;

    context = 0xdeadbeef;
    ret = WinHttpSetOption(request, WINHTTP_OPTION_CONTEXT_VALUE, &context, sizeof(context));
    ok(ret, "WinHttpSetOption failed: %u\n", GetLastError());



    disable = WINHTTP_DISABLE_KEEP_ALIVE;
    ret = WinHttpSetOption(request, WINHTTP_OPTION_DISABLE_FEATURE, &disable, sizeof(disable));
    ok(ret, "WinHttpSetOption failed: %u\n", GetLastError());

    context++;
    ret = WinHttpSendRequest(request, content_type, header_len, post_data, optional_len, total_len, context);
    err = GetLastError();
    if (!ret && (err == ERROR_WINHTTP_CANNOT_CONNECT || err == ERROR_WINHTTP_TIMEOUT))
    {
        skip("connection failed, skipping\n");
        goto done;
    }
    ok(ret == TRUE, "WinHttpSendRequest failed: %u\n", GetLastError());

    context = 0;
    size = sizeof(context);
    ret = WinHttpQueryOption(request, WINHTTP_OPTION_CONTEXT_VALUE, &context, &size);
    ok(ret, "WinHttpQueryOption failed: %u\n", GetLastError());
    ok(context == 0xdeadbef0, "expected 0xdeadbef0, got %lx\n", context);

    for (i = 3; post_data[i]; i++)
    {
        bytes_rw = -1;
        SetLastError(0xdeadbeef);
        ret = WinHttpWriteData(request, &post_data[i], 1, &bytes_rw);
        if (ret)
        {
          ok(GetLastError() == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %u.\n", GetLastError());
          ok(bytes_rw == 1, "WinHttpWriteData failed, wrote %u bytes instead of 1 byte.\n", bytes_rw);
        }
        else
        {
          ok(GetLastError() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER got %u.\n", GetLastError());
          ok(bytes_rw == -1, "Expected bytes_rw to remain unchanged.\n");
        }
    }

    SetLastError(0xdeadbeef);
    ret = WinHttpReceiveResponse(request, ((void*)0));
    ok(GetLastError() == ERROR_SUCCESS || broken(GetLastError() == ERROR_NO_TOKEN) ,
       "Expected ERROR_SUCCESS got %u.\n", GetLastError());
    ok(ret == TRUE, "WinHttpReceiveResponse failed: %u.\n", GetLastError());

    bytes_rw = -1;
    ret = WinHttpReadData(request, buffer, sizeof(buffer) - 1, &bytes_rw);
    ok(ret == TRUE, "WinHttpReadData failed: %u.\n", GetLastError());

    ok(bytes_rw == sizeof(test_post) - 1, "Read %u bytes\n", bytes_rw);
    ok(!memcmp(buffer, test_post, sizeof(test_post) - 1), "Data read did not match.\n");

 done:
    ret = WinHttpCloseHandle(request);
    ok(ret == TRUE, "WinHttpCloseHandle failed on closing request, got %d.\n", ret);
    ret = WinHttpCloseHandle(connection);
    ok(ret == TRUE, "WinHttpCloseHandle failed on closing connection, got %d.\n", ret);
    ret = WinHttpCloseHandle(session);
    ok(ret == TRUE, "WinHttpCloseHandle failed on closing session, got %d.\n", ret);
}
