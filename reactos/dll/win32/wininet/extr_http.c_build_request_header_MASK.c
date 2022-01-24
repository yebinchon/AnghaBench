#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nCustHeaders; int /*<<< orphan*/  headers_section; TYPE_1__* custHeaders; } ;
typedef  TYPE_2__ http_request_t ;
typedef  char WCHAR ;
typedef  size_t UINT ;
struct TYPE_4__ {int wFlags; char* lpszField; char* lpszValue; } ;
typedef  char* LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int HDR_ISREQUEST ; 
 char* FUNC1 (char const**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char** FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 

__attribute__((used)) static WCHAR* FUNC7(http_request_t *request, const WCHAR *verb,
        const WCHAR *path, const WCHAR *version, BOOL use_cr)
{
    static const WCHAR szSpace[] = {' ',0};
    static const WCHAR szColon[] = {':',' ',0};
    static const WCHAR szCr[] = {'\r',0};
    static const WCHAR szLf[] = {'\n',0};
    LPWSTR requestString;
    DWORD len, n;
    LPCWSTR *req;
    UINT i;

    FUNC0( &request->headers_section );

    /* allocate space for an array of all the string pointers to be added */
    len = request->nCustHeaders * 5 + 10;
    if (!(req = FUNC5( len * sizeof(const WCHAR *) )))
    {
        FUNC2( &request->headers_section );
        return NULL;
    }

    /* add the verb, path and HTTP version string */
    n = 0;
    req[n++] = verb;
    req[n++] = szSpace;
    req[n++] = path;
    req[n++] = szSpace;
    req[n++] = version;
    if (use_cr)
        req[n++] = szCr;
    req[n++] = szLf;

    /* Append custom request headers */
    for (i = 0; i < request->nCustHeaders; i++)
    {
        if (request->custHeaders[i].wFlags & HDR_ISREQUEST)
        {
            req[n++] = request->custHeaders[i].lpszField;
            req[n++] = szColon;
            req[n++] = request->custHeaders[i].lpszValue;
            if (use_cr)
                req[n++] = szCr;
            req[n++] = szLf;

            FUNC3("Adding custom header %s (%s)\n",
                   FUNC4(request->custHeaders[i].lpszField),
                   FUNC4(request->custHeaders[i].lpszValue));
        }
    }
    if (use_cr)
        req[n++] = szCr;
    req[n++] = szLf;
    req[n] = NULL;

    requestString = FUNC1( req, 4 );
    FUNC6( req );
    FUNC2( &request->headers_section );
    return requestString;
}