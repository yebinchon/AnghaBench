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
struct HttpAuthInfo {char const* scheme; char* auth_data; scalar_t__ auth_data_len; } ;
typedef  int /*<<< orphan*/  http_request_t ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HTTP_ADDHDR_FLAG_ADD ; 
 int HTTP_ADDHDR_FLAG_REPLACE ; 
 int HTTP_ADDHDR_FLAG_REQ ; 
 int HTTP_ADDREQ_FLAG_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  szAuthorization ; 

__attribute__((used)) static BOOL FUNC9( http_request_t *request, struct HttpAuthInfo *pAuthInfo, LPCWSTR header )
{
    static const WCHAR wszBasic[] = {'B','a','s','i','c',0};
    WCHAR *host, *authorization = NULL;

    if (pAuthInfo)
    {
        if (pAuthInfo->auth_data_len)
        {
            if (!(authorization = FUNC3(pAuthInfo->scheme, pAuthInfo->auth_data, pAuthInfo->auth_data_len)))
                return FALSE;

            /* clear the data as it isn't valid now that it has been sent to the
             * server, unless it's Basic authentication which doesn't do
             * connection tracking */
            if (FUNC8(pAuthInfo->scheme, wszBasic))
            {
                FUNC5(pAuthInfo->auth_data);
                pAuthInfo->auth_data = NULL;
                pAuthInfo->auth_data_len = 0;
            }
        }

        FUNC1("Inserting authorization: %s\n", FUNC2(authorization));

        FUNC0(request, header, authorization,
                           HTTP_ADDHDR_FLAG_REQ | HTTP_ADDHDR_FLAG_REPLACE | HTTP_ADDREQ_FLAG_ADD);
        FUNC5(authorization);
    }
    else if (!FUNC7(header, szAuthorization) && (host = FUNC4(request)))
    {
        UINT data_len;
        char *data;

        if ((data_len = FUNC6(host, NULL, &data)))
        {
            FUNC1("Found cached basic authorization for %s\n", FUNC2(host));

            if (!(authorization = FUNC3(wszBasic, data, data_len)))
            {
                FUNC5(data);
                FUNC5(host);
                return FALSE;
            }

            FUNC1("Inserting authorization: %s\n", FUNC2(authorization));

            FUNC0(request, header, authorization,
                               HTTP_ADDHDR_FLAG_REQ | HTTP_ADDHDR_FLAG_REPLACE | HTTP_ADDHDR_FLAG_ADD);
            FUNC5(data);
            FUNC5(authorization);
        }
        FUNC5(host);
    }
    return TRUE;
}