#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {scalar_t__ tm_year; int /*<<< orphan*/  tm_sec; scalar_t__ tm_mon; int /*<<< orphan*/  tm_wday; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; } ;
struct TYPE_8__ {char* version; char* statusText; int status_code; int /*<<< orphan*/  headers_section; TYPE_3__* custHeaders; int /*<<< orphan*/  read_gzip; int /*<<< orphan*/  path; int /*<<< orphan*/  verb; } ;
typedef  TYPE_1__ http_request_t ;
typedef  char WCHAR ;
struct TYPE_10__ {int wFlags; char* lpszValue; } ;
struct TYPE_9__ {scalar_t__ wMilliseconds; int /*<<< orphan*/  wSecond; int /*<<< orphan*/  wMinute; int /*<<< orphan*/  wHour; int /*<<< orphan*/  wDayOfWeek; int /*<<< orphan*/  wDay; scalar_t__ wMonth; scalar_t__ wYear; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  char* LPWSTR ;
typedef  char* LPVOID ;
typedef  TYPE_3__* LPHTTPHEADERW ;
typedef  int* LPDWORD ;
typedef  size_t INT ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ERROR_HTTP_HEADER_NOT_FOUND ; 
 int ERROR_HTTP_INVALID_QUERY_REQUEST ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_OUTOFMEMORY ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int HDR_ISREQUEST ; 
 size_t FUNC2 (TYPE_1__*,char*,size_t,int) ; 
#define  HTTP_QUERY_CONTENT_ENCODING 134 
 int HTTP_QUERY_CONTENT_TYPE ; 
#define  HTTP_QUERY_CUSTOM 133 
 int HTTP_QUERY_FLAG_NUMBER ; 
 int HTTP_QUERY_FLAG_REQUEST_HEADERS ; 
 int HTTP_QUERY_FLAG_SYSTEMTIME ; 
 int HTTP_QUERY_MODIFIER_FLAGS_MASK ; 
#define  HTTP_QUERY_RAW_HEADERS 132 
#define  HTTP_QUERY_RAW_HEADERS_CRLF 131 
#define  HTTP_QUERY_STATUS_CODE 130 
#define  HTTP_QUERY_STATUS_TEXT 129 
 int /*<<< orphan*/  HTTP_QUERY_UNLESS_MODIFIED_SINCE ; 
#define  HTTP_QUERY_VERSION 128 
 int LAST_TABLE_HEADER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*,int) ; 
 struct tm* FUNC11 (int /*<<< orphan*/ *) ; 
 char** header_lookup ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int FUNC14 (char*,char const*,int) ; 
 int FUNC15 (char*) ; 

__attribute__((used)) static DWORD FUNC16(http_request_t *request, DWORD dwInfoLevel,
        LPVOID lpBuffer, LPDWORD lpdwBufferLength, LPDWORD lpdwIndex)
{
    LPHTTPHEADERW lphttpHdr = NULL;
    BOOL request_only = !!(dwInfoLevel & HTTP_QUERY_FLAG_REQUEST_HEADERS);
    INT requested_index = lpdwIndex ? *lpdwIndex : 0;
    DWORD level = (dwInfoLevel & ~HTTP_QUERY_MODIFIER_FLAGS_MASK);
    INT index = -1;

    FUNC1( &request->headers_section );

    /* Find requested header structure */
    switch (level)
    {
    case HTTP_QUERY_CUSTOM:
        if (!lpBuffer)
        {
            FUNC3( &request->headers_section );
            return ERROR_INVALID_PARAMETER;
        }
        index = FUNC2(request, lpBuffer, requested_index, request_only);
        break;
    case HTTP_QUERY_RAW_HEADERS_CRLF:
        {
            LPWSTR headers;
            DWORD len = 0;
            DWORD res = ERROR_INVALID_PARAMETER;

            if (request_only)
                headers = FUNC7(request, request->verb, request->path, request->version, TRUE);
            else
                headers = FUNC8(request, TRUE);
            if (!headers)
            {
                FUNC3( &request->headers_section );
                return ERROR_OUTOFMEMORY;
            }

            len = FUNC15(headers) * sizeof(WCHAR);
            if (len + sizeof(WCHAR) > *lpdwBufferLength)
            {
                len += sizeof(WCHAR);
                res = ERROR_INSUFFICIENT_BUFFER;
            }
            else if (lpBuffer)
            {
                FUNC13(lpBuffer, headers, len + sizeof(WCHAR));
                FUNC4("returning data: %s\n", FUNC10(lpBuffer, len / sizeof(WCHAR)));
                res = ERROR_SUCCESS;
            }
            *lpdwBufferLength = len;

            FUNC12(headers);
            FUNC3( &request->headers_section );
            return res;
        }
    case HTTP_QUERY_RAW_HEADERS:
        {
            LPWSTR headers;
            DWORD len;

            if (request_only)
                headers = FUNC7(request, request->verb, request->path, request->version, FALSE);
            else
                headers = FUNC8(request, FALSE);

            if (!headers)
            {
                FUNC3( &request->headers_section );
                return ERROR_OUTOFMEMORY;
            }

            len = FUNC15(headers) * sizeof(WCHAR);
            if (len > *lpdwBufferLength)
            {
                *lpdwBufferLength = len;
                FUNC12(headers);
                FUNC3( &request->headers_section );
                return ERROR_INSUFFICIENT_BUFFER;
            }

            if (lpBuffer)
            {
                DWORD i;

                FUNC4("returning data: %s\n", FUNC10(headers, len / sizeof(WCHAR)));

                for (i = 0; i < len / sizeof(WCHAR); i++)
                {
                    if (headers[i] == '\n')
                        headers[i] = 0;
                }
                FUNC13(lpBuffer, headers, len);
            }
            *lpdwBufferLength = len - sizeof(WCHAR);

            FUNC12(headers);
            FUNC3( &request->headers_section );
            return ERROR_SUCCESS;
        }
    case HTTP_QUERY_STATUS_TEXT:
        if (request->statusText)
        {
            DWORD len = FUNC15(request->statusText);
            if (len + 1 > *lpdwBufferLength/sizeof(WCHAR))
            {
                *lpdwBufferLength = (len + 1) * sizeof(WCHAR);
                FUNC3( &request->headers_section );
                return ERROR_INSUFFICIENT_BUFFER;
            }
            if (lpBuffer)
            {
                FUNC13(lpBuffer, request->statusText, (len + 1) * sizeof(WCHAR));
                FUNC4("returning data: %s\n", FUNC10(lpBuffer, len));
            }
            *lpdwBufferLength = len * sizeof(WCHAR);
            FUNC3( &request->headers_section );
            return ERROR_SUCCESS;
        }
        break;
    case HTTP_QUERY_VERSION:
        if (request->version)
        {
            DWORD len = FUNC15(request->version);
            if (len + 1 > *lpdwBufferLength/sizeof(WCHAR))
            {
                *lpdwBufferLength = (len + 1) * sizeof(WCHAR);
                FUNC3( &request->headers_section );
                return ERROR_INSUFFICIENT_BUFFER;
            }
            if (lpBuffer)
            {
                FUNC13(lpBuffer, request->version, (len + 1) * sizeof(WCHAR));
                FUNC4("returning data: %s\n", FUNC10(lpBuffer, len));
            }
            *lpdwBufferLength = len * sizeof(WCHAR);
            FUNC3( &request->headers_section );
            return ERROR_SUCCESS;
        }
        break;
    case HTTP_QUERY_CONTENT_ENCODING:
        index = FUNC2(request, header_lookup[request->read_gzip ? HTTP_QUERY_CONTENT_TYPE : level],
                requested_index,request_only);
        break;
    case HTTP_QUERY_STATUS_CODE: {
        DWORD res = ERROR_SUCCESS;

        if(request_only)
        {
            FUNC3( &request->headers_section );
            return ERROR_HTTP_INVALID_QUERY_REQUEST;
        }

        if(requested_index)
            break;

        if(dwInfoLevel & HTTP_QUERY_FLAG_NUMBER) {
            if(*lpdwBufferLength >= sizeof(DWORD))
                *(DWORD*)lpBuffer = request->status_code;
            else
                res = ERROR_INSUFFICIENT_BUFFER;
            *lpdwBufferLength = sizeof(DWORD);
        }else {
            WCHAR buf[12];
            DWORD size;
            static const WCHAR formatW[] = {'%','u',0};

            size = FUNC14(buf, formatW, request->status_code) * sizeof(WCHAR);

            if(size <= *lpdwBufferLength) {
                FUNC13(lpBuffer, buf, size+sizeof(WCHAR));
            }else {
                size += sizeof(WCHAR);
                res = ERROR_INSUFFICIENT_BUFFER;
            }

            *lpdwBufferLength = size;
        }
        FUNC3( &request->headers_section );
        return res;
    }
    default:
        FUNC5 (LAST_TABLE_HEADER == (HTTP_QUERY_UNLESS_MODIFIED_SINCE + 1));

        if (level < LAST_TABLE_HEADER && header_lookup[level])
            index = FUNC2(request, header_lookup[level],
                                              requested_index,request_only);
    }

    if (index >= 0)
        lphttpHdr = &request->custHeaders[index];

    /* Ensure header satisfies requested attributes */
    if (!lphttpHdr ||
        ((dwInfoLevel & HTTP_QUERY_FLAG_REQUEST_HEADERS) &&
         (~lphttpHdr->wFlags & HDR_ISREQUEST)))
    {
        FUNC3( &request->headers_section );
        return ERROR_HTTP_HEADER_NOT_FOUND;
    }

    /* coalesce value to requested type */
    if (dwInfoLevel & HTTP_QUERY_FLAG_NUMBER && lpBuffer)
    {
        *(int *)lpBuffer = FUNC6(lphttpHdr->lpszValue);
        FUNC4(" returning number: %d\n", *(int *)lpBuffer);
     }
    else if (dwInfoLevel & HTTP_QUERY_FLAG_SYSTEMTIME && lpBuffer)
    {
        time_t tmpTime;
        struct tm tmpTM;
        SYSTEMTIME *STHook;

        tmpTime = FUNC0(lphttpHdr->lpszValue);

        tmpTM = *FUNC11(&tmpTime);
        STHook = (SYSTEMTIME *)lpBuffer;
        STHook->wDay = tmpTM.tm_mday;
        STHook->wHour = tmpTM.tm_hour;
        STHook->wMilliseconds = 0;
        STHook->wMinute = tmpTM.tm_min;
        STHook->wDayOfWeek = tmpTM.tm_wday;
        STHook->wMonth = tmpTM.tm_mon + 1;
        STHook->wSecond = tmpTM.tm_sec;
        STHook->wYear = 1900+tmpTM.tm_year;

        FUNC4(" returning time: %04d/%02d/%02d - %d - %02d:%02d:%02d.%02d\n",
              STHook->wYear, STHook->wMonth, STHook->wDay, STHook->wDayOfWeek,
              STHook->wHour, STHook->wMinute, STHook->wSecond, STHook->wMilliseconds);
    }
    else if (lphttpHdr->lpszValue)
    {
        DWORD len = (FUNC15(lphttpHdr->lpszValue) + 1) * sizeof(WCHAR);

        if (len > *lpdwBufferLength)
        {
            *lpdwBufferLength = len;
            FUNC3( &request->headers_section );
            return ERROR_INSUFFICIENT_BUFFER;
        }
        if (lpBuffer)
        {
            FUNC13(lpBuffer, lphttpHdr->lpszValue, len);
            FUNC4("! returning string: %s\n", FUNC9(lpBuffer));
        }
        *lpdwBufferLength = len - sizeof(WCHAR);
    }
    if (lpdwIndex) (*lpdwIndex)++;

    FUNC3( &request->headers_section );
    return ERROR_SUCCESS;
}