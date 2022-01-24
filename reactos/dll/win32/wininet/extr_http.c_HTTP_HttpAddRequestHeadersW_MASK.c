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
typedef  int /*<<< orphan*/  http_request_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 unsigned int ERROR_HTTP_INVALID_HEADER ; 
 unsigned int ERROR_SUCCESS ; 
 unsigned int HTTP_ADDHDR_FLAG_REQ ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC10(http_request_t *request,
	LPCWSTR lpszHeader, DWORD dwHeaderLength, DWORD dwModifier)
{
    LPWSTR lpszStart;
    LPWSTR lpszEnd;
    LPWSTR buffer;
    DWORD len, res = ERROR_HTTP_INVALID_HEADER;

    FUNC3("copying header: %s\n", FUNC5(lpszHeader, dwHeaderLength));

    if( dwHeaderLength == ~0U )
        len = FUNC9(lpszHeader);
    else
        len = dwHeaderLength;
    buffer = FUNC6(sizeof(WCHAR)*(len+1));
    FUNC8( buffer, lpszHeader, len + 1);

    lpszStart = buffer;

    do
    {
        LPWSTR * pFieldAndValue;

        lpszEnd = lpszStart;

        while (*lpszEnd != '\0')
        {
            if (*lpszEnd == '\r' || *lpszEnd == '\n')
                 break;
            lpszEnd++;
        }

        if (*lpszStart == '\0')
	    break;

        if (*lpszEnd == '\r' || *lpszEnd == '\n')
        {
            *lpszEnd = '\0';
            lpszEnd++; /* Jump over newline */
        }
        FUNC3("interpreting header %s\n", FUNC4(lpszStart));
        if (*lpszStart == '\0')
        {
            /* Skip 0-length headers */
            lpszStart = lpszEnd;
            res = ERROR_SUCCESS;
            continue;
        }
        pFieldAndValue = FUNC1(lpszStart);
        if (pFieldAndValue)
        {
            res = FUNC2(request, pFieldAndValue[0],
                pFieldAndValue[1], dwModifier | HTTP_ADDHDR_FLAG_REQ);
            FUNC0(pFieldAndValue);
        }

        lpszStart = lpszEnd;
    } while (res == ERROR_SUCCESS);

    FUNC7(buffer);
    return res;
}