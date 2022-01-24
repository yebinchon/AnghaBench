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
typedef  int /*<<< orphan*/  test_post ;
typedef  int /*<<< orphan*/  post_data ;
typedef  int /*<<< orphan*/  disable ;
typedef  int /*<<< orphan*/  context ;
typedef  int /*<<< orphan*/  buffer ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  int DWORD_PTR ;
typedef  scalar_t__ DWORD ;
typedef  char CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_NO_TOKEN ; 
 int ERROR_SUCCESS ; 
 scalar_t__ ERROR_WINHTTP_CANNOT_CONNECT ; 
 int ERROR_WINHTTP_NAME_NOT_RESOLVED ; 
 scalar_t__ ERROR_WINHTTP_TIMEOUT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  INTERNET_DEFAULT_HTTP_PORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  WINHTTP_ACCESS_TYPE_DEFAULT_PROXY ; 
 int /*<<< orphan*/  WINHTTP_DEFAULT_ACCEPT_TYPES ; 
 scalar_t__ WINHTTP_DISABLE_KEEP_ALIVE ; 
 int /*<<< orphan*/  WINHTTP_FLAG_BYPASS_PROXY_CACHE ; 
 int /*<<< orphan*/  WINHTTP_NO_PROXY_BYPASS ; 
 int /*<<< orphan*/  WINHTTP_NO_PROXY_NAME ; 
 int /*<<< orphan*/  WINHTTP_NO_REFERER ; 
 int /*<<< orphan*/  WINHTTP_OPTION_CONTEXT_VALUE ; 
 int /*<<< orphan*/  WINHTTP_OPTION_DISABLE_FEATURE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int,scalar_t__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,scalar_t__,char*,scalar_t__,scalar_t__,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int,scalar_t__*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  test_useragent ; 
 int /*<<< orphan*/  test_winehq ; 

__attribute__((used)) static void FUNC17 (void)
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
    FUNC14(buffer, 0xff, sizeof(buffer));

    session = FUNC4(test_useragent, WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
        WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
    FUNC15(session != NULL, "WinHttpOpen failed to open session.\n");

    connection = FUNC3 (session, test_winehq, INTERNET_DEFAULT_HTTP_PORT, 0);
    FUNC15(connection != NULL, "WinHttpConnect failed to open a connection, error: %u.\n", FUNC0());

    request = FUNC5(connection, test_verb, test_file, NULL, WINHTTP_NO_REFERER,
        WINHTTP_DEFAULT_ACCEPT_TYPES, WINHTTP_FLAG_BYPASS_PROXY_CACHE);
    if (request == NULL && FUNC0() == ERROR_WINHTTP_NAME_NOT_RESOLVED)
    {
        FUNC16("Network unreachable, skipping.\n");
        goto done;
    }
    FUNC15(request != NULL, "WinHttpOpenrequest failed to open a request, error: %u.\n", FUNC0());
    if (!request) goto done;

    context = 0xdeadbeef;
    ret = FUNC10(request, WINHTTP_OPTION_CONTEXT_VALUE, &context, sizeof(context));
    FUNC15(ret, "WinHttpSetOption failed: %u\n", FUNC0());

    /* writing more data than promised by the content-length header causes an error when the connection
       is resued, so disable keep-alive */
    disable = WINHTTP_DISABLE_KEEP_ALIVE;
    ret = FUNC10(request, WINHTTP_OPTION_DISABLE_FEATURE, &disable, sizeof(disable));
    FUNC15(ret, "WinHttpSetOption failed: %u\n", FUNC0());

    context++;
    ret = FUNC9(request, content_type, header_len, post_data, optional_len, total_len, context);
    err = FUNC0();
    if (!ret && (err == ERROR_WINHTTP_CANNOT_CONNECT || err == ERROR_WINHTTP_TIMEOUT))
    {
        FUNC16("connection failed, skipping\n");
        goto done;
    }
    FUNC15(ret == TRUE, "WinHttpSendRequest failed: %u\n", FUNC0());

    context = 0;
    size = sizeof(context);
    ret = FUNC6(request, WINHTTP_OPTION_CONTEXT_VALUE, &context, &size);
    FUNC15(ret, "WinHttpQueryOption failed: %u\n", FUNC0());
    FUNC15(context == 0xdeadbef0, "expected 0xdeadbef0, got %lx\n", context);

    for (i = 3; post_data[i]; i++)
    {
        bytes_rw = -1;
        FUNC1(0xdeadbeef);
        ret = FUNC11(request, &post_data[i], 1, &bytes_rw);
        if (ret)
        {
          FUNC15(FUNC0() == ERROR_SUCCESS, "Expected ERROR_SUCCESS got %u.\n", FUNC0());
          FUNC15(bytes_rw == 1, "WinHttpWriteData failed, wrote %u bytes instead of 1 byte.\n", bytes_rw);
        }
        else /* Since we already passed all optional data in WinHttpSendRequest Win7 fails our WinHttpWriteData call */
        {
          FUNC15(FUNC0() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER got %u.\n", FUNC0());
          FUNC15(bytes_rw == -1, "Expected bytes_rw to remain unchanged.\n");
        }
    }

    FUNC1(0xdeadbeef);
    ret = FUNC8(request, NULL);
    FUNC15(FUNC0() == ERROR_SUCCESS || FUNC12(FUNC0() == ERROR_NO_TOKEN) /* < win7 */,
       "Expected ERROR_SUCCESS got %u.\n", FUNC0());
    FUNC15(ret == TRUE, "WinHttpReceiveResponse failed: %u.\n", FUNC0());

    bytes_rw = -1;
    ret = FUNC7(request, buffer, sizeof(buffer) - 1, &bytes_rw);
    FUNC15(ret == TRUE, "WinHttpReadData failed: %u.\n", FUNC0());

    FUNC15(bytes_rw == sizeof(test_post) - 1, "Read %u bytes\n", bytes_rw);
    FUNC15(!FUNC13(buffer, test_post, sizeof(test_post) - 1), "Data read did not match.\n");

 done:
    ret = FUNC2(request);
    FUNC15(ret == TRUE, "WinHttpCloseHandle failed on closing request, got %d.\n", ret);
    ret = FUNC2(connection);
    FUNC15(ret == TRUE, "WinHttpCloseHandle failed on closing connection, got %d.\n", ret);
    ret = FUNC2(session);
    FUNC15(ret == TRUE, "WinHttpCloseHandle failed on closing session, got %d.\n", ret);
}