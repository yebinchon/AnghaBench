#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int dwFlags; int /*<<< orphan*/  dwContext; } ;
struct TYPE_18__ {int status_code; scalar_t__ contentLength; int /*<<< orphan*/ * verb; TYPE_9__ hdr; int /*<<< orphan*/  netconn; } ;
typedef  TYPE_1__ http_request_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_HTTP_HEADER_NOT_FOUND ; 
 scalar_t__ ERROR_INTERNET_OPERATION_CANCELLED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
#define  HTTP_STATUS_MOVED 131 
#define  HTTP_STATUS_REDIRECT 130 
#define  HTTP_STATUS_REDIRECT_KEEP_VERB 129 
#define  HTTP_STATUS_REDIRECT_METHOD 128 
 int INTERNET_FLAG_NO_AUTO_REDIRECT ; 
 int /*<<< orphan*/  INTERNET_STATUS_RECEIVING_RESPONSE ; 
 int /*<<< orphan*/  INTERNET_STATUS_RESPONSE_RECEIVED ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szGET ; 
 int /*<<< orphan*/  szHEAD ; 

__attribute__((used)) static DWORD FUNC20(http_request_t *request, DWORD dwFlags, DWORD_PTR dwContext)
{
    INT responseLen;
    DWORD res = ERROR_SUCCESS;

    if(!FUNC16(request->netconn)) {
        FUNC8("Not connected\n");
        FUNC17(request, 0, ERROR_INTERNET_OPERATION_CANCELLED);
        return ERROR_INTERNET_OPERATION_CANCELLED;
    }

    FUNC7(&request->hdr, request->hdr.dwContext,
                  INTERNET_STATUS_RECEIVING_RESPONSE, NULL, 0);

    if (FUNC0(request, &responseLen) || !responseLen)
        res = ERROR_HTTP_HEADER_NOT_FOUND;

    FUNC7(&request->hdr, request->hdr.dwContext,
                  INTERNET_STATUS_RESPONSE_RECEIVED, &responseLen, sizeof(DWORD));

    /* process cookies here. Is this right? */
    FUNC14(request);
    FUNC3(request);
    FUNC4(request);
    FUNC5(request);

    if ((res = FUNC18(request)) == ERROR_SUCCESS) {
        if(!request->contentLength)
            FUNC15(request, TRUE);
    }

    if (res == ERROR_SUCCESS && !(request->hdr.dwFlags & INTERNET_FLAG_NO_AUTO_REDIRECT))
    {
        switch(request->status_code) {
        case HTTP_STATUS_REDIRECT:
        case HTTP_STATUS_MOVED:
        case HTTP_STATUS_REDIRECT_METHOD:
        case HTTP_STATUS_REDIRECT_KEEP_VERB: {
            WCHAR *new_url;

            new_url = FUNC11(request);
            if(!new_url)
                break;

            if (FUNC19(request->verb, szGET) && FUNC19(request->verb, szHEAD) &&
                request->status_code != HTTP_STATUS_REDIRECT_KEEP_VERB)
            {
                FUNC12(request->verb);
                request->verb = FUNC13(szGET);
            }
            FUNC15(request, FUNC10(request, FALSE) == ERROR_SUCCESS);
            res = FUNC1(request, new_url);
            FUNC12(new_url);
            if (res == ERROR_SUCCESS)
                res = FUNC2(request, NULL, 0, NULL, 0, 0, TRUE);
        }
        }
    }

    if(res == ERROR_SUCCESS)
        FUNC9(request);

    if (res == ERROR_SUCCESS && request->contentLength)
        FUNC6(request);
    else
        FUNC17(request, res == ERROR_SUCCESS, res);

    return res;
}