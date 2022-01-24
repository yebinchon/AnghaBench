#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ status_code; void* statusText; void* version; int /*<<< orphan*/  receive_timeout; int /*<<< orphan*/  netconn; } ;
typedef  TYPE_1__ http_request_t ;
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  int INT ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int ERROR_HTTP_INVALID_SERVER_RESPONSE ; 
 int ERROR_SUCCESS ; 
 int FALSE ; 
 int HTTP_ADDHDR_FLAG_ADD ; 
 int HTTP_ADDHDR_FLAG_REPLACE ; 
 int HTTP_ADDREQ_FLAG_ADD ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*,int) ; 
 scalar_t__ HTTP_STATUS_CONTINUE ; 
 scalar_t__ HTTP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int MAX_REPLY_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* emptyW ; 
 char* g_szHttp1_0 ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 void* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_1__*,char*,int*) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 char* szOK ; 
 char* szStatus ; 

__attribute__((used)) static DWORD FUNC17(http_request_t *request, INT *len)
{
    INT cbreaks = 0;
    WCHAR buffer[MAX_REPLY_LEN];
    DWORD buflen = MAX_REPLY_LEN;
    INT  rc = 0;
    char bufferA[MAX_REPLY_LEN];
    LPWSTR status_code = NULL, status_text = NULL;
    DWORD res = ERROR_HTTP_INVALID_SERVER_RESPONSE;
    BOOL codeHundred = FALSE;

    FUNC6("-->\n");

    if(!FUNC13(request->netconn))
        goto lend;

    /* clear old response headers (eg. from a redirect response) */
    FUNC3( request );

    FUNC5( request->netconn, FALSE, request->receive_timeout );
    do {
        /*
         * We should first receive 'HTTP/1.x nnn OK' where nnn is the status code.
         */
        buflen = MAX_REPLY_LEN;
        if ((res = FUNC14(request, bufferA, &buflen)))
            goto lend;

        if (!buflen) goto lend;

        rc += buflen;
        FUNC4( CP_ACP, 0, bufferA, buflen, buffer, MAX_REPLY_LEN );
        /* check is this a status code line? */
        if (!FUNC16(buffer, g_szHttp1_0, 4))
        {
            /* split the version from the status code */
            status_code = FUNC15( buffer, ' ' );
            if( !status_code )
                goto lend;
            *status_code++=0;

            /* split the status code from the status text */
            status_text = FUNC15( status_code, ' ' );
            if( status_text )
                *status_text++=0;

            request->status_code = FUNC8(status_code);

            FUNC6("version [%s] status code [%s] status text [%s]\n",
               FUNC10(buffer), FUNC10(status_code), FUNC10(status_text) );

            codeHundred = request->status_code == HTTP_STATUS_CONTINUE;
        }
        else if (!codeHundred)
        {
            FUNC7("No status line at head of response (%s)\n", FUNC10(buffer));

            FUNC11(request->version);
            FUNC11(request->statusText);

            request->status_code = HTTP_STATUS_OK;
            request->version = FUNC12(g_szHttp1_0);
            request->statusText = FUNC12(szOK);

            goto lend;
        }
    } while (codeHundred);

    /* Add status code */
    FUNC2(request, szStatus, status_code,
                       HTTP_ADDHDR_FLAG_REPLACE | HTTP_ADDHDR_FLAG_ADD);

    FUNC11(request->version);
    FUNC11(request->statusText);

    request->version = FUNC12(buffer);
    request->statusText = FUNC12(status_text ? status_text : emptyW);

    /* Restore the spaces */
    *(status_code-1) = ' ';
    if (status_text)
        *(status_text-1) = ' ';

    /* Parse each response line */
    do
    {
        buflen = MAX_REPLY_LEN;
        if (!FUNC14(request, bufferA, &buflen) && buflen)
        {
            LPWSTR * pFieldAndValue;

            FUNC6("got line %s, now interpreting\n", FUNC9(bufferA));

            if (!bufferA[0]) break;
            FUNC4( CP_ACP, 0, bufferA, buflen, buffer, MAX_REPLY_LEN );

            pFieldAndValue = FUNC1(buffer);
            if (pFieldAndValue)
            {
                FUNC2(request, pFieldAndValue[0], pFieldAndValue[1],
                                   HTTP_ADDREQ_FLAG_ADD );
                FUNC0(pFieldAndValue);
            }
        }
        else
        {
            cbreaks++;
            if (cbreaks >= 2)
                break;
        }
    }while(1);

    res = ERROR_SUCCESS;

lend:

    *len = rc;
    FUNC6("<--\n");
    return res;
}