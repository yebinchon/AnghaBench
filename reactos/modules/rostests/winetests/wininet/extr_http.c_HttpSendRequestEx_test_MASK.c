#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szPostData ;
typedef  int /*<<< orphan*/  szContentType ;
struct TYPE_3__ {int dwStructSize; char const* lpcszHeader; int dwHeadersLength; int dwHeadersTotal; char* lpvBuffer; int dwBufferLength; int dwBufferTotal; scalar_t__ dwOffsetHigh; scalar_t__ dwOffsetLow; struct TYPE_3__* Next; } ;
typedef  TYPE_1__ INTERNET_BUFFERSA ;
typedef  int /*<<< orphan*/ * HINTERNET ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ CHAR ;
typedef  int /*<<< orphan*/  BufferIn ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INTERNET_NAME_NOT_RESOLVED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERNET_DEFAULT_HTTP_PORT ; 
 int /*<<< orphan*/  INTERNET_FLAG_NO_CACHE_WRITE ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_PRECONFIG ; 
 int /*<<< orphan*/  INTERNET_REQFLAG_NO_HEADERS ; 
 int /*<<< orphan*/  INTERNET_SERVICE_HTTP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (scalar_t__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(void)
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

    hSession = FUNC6("Wine Regression Test",
            INTERNET_OPEN_TYPE_PRECONFIG,NULL,NULL,0);
    FUNC11( hSession != NULL ,"Unable to open Internet session\n");
    hConnect = FUNC5(hSession, "test.winehq.org",
            INTERNET_DEFAULT_HTTP_PORT, NULL, NULL, INTERNET_SERVICE_HTTP, 0,
            0);
    FUNC11( hConnect != NULL, "Unable to connect to http://test.winehq.org\n");
    hRequest = FUNC2(hConnect, "POST", "/tests/post.php",
            NULL, NULL, NULL, INTERNET_FLAG_NO_CACHE_WRITE, 0);
    if (!hRequest && FUNC0() == ERROR_INTERNET_NAME_NOT_RESOLVED)
    {
        FUNC13( "Network unreachable, skipping test\n" );
        goto done;
    }
    FUNC11( hRequest != NULL, "Failed to open request handle err %u\n", FUNC0());

    FUNC15(hRequest, INTERNET_REQFLAG_NO_HEADERS);

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

    FUNC9(0xdeadbeef);
    ret = FUNC3(hRequest, &BufferIn, NULL, 0 ,0);
    error = FUNC0();
    FUNC11(ret, "HttpSendRequestEx Failed with error %u\n", error);
    FUNC11(error == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", error);

    FUNC15(hRequest, INTERNET_REQFLAG_NO_HEADERS);

    for (i = 3; szPostData[i]; i++)
        FUNC11(FUNC8(hRequest, &szPostData[i], 1, &dwBytesWritten),
                "InternetWriteFile failed\n");

    FUNC15(hRequest, INTERNET_REQFLAG_NO_HEADERS);

    FUNC11(FUNC1(hRequest, NULL, 0, 0), "HttpEndRequest Failed\n");

    FUNC15(hRequest, 0);

    FUNC11(FUNC7(hRequest, szBuffer, 255, &dwBytesRead),
            "Unable to read response\n");
    szBuffer[dwBytesRead] = 0;

    FUNC11(dwBytesRead == 13,"Read %u bytes instead of 13\n",dwBytesRead);
    FUNC11(FUNC14(szBuffer,"mode => Test\n",dwBytesRead)==0 || FUNC10(FUNC12()),"Got string %s\n",szBuffer);

    FUNC11(FUNC4(hRequest), "Close request handle failed\n");
done:
    FUNC11(FUNC4(hConnect), "Close connect handle failed\n");
    FUNC11(FUNC4(hSession), "Close session handle failed\n");
}