
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int time_t ;
struct tm {scalar_t__ tm_year; int tm_sec; scalar_t__ tm_mon; int tm_wday; int tm_min; int tm_hour; int tm_mday; } ;
struct TYPE_8__ {char* version; char* statusText; int status_code; int headers_section; TYPE_3__* custHeaders; int read_gzip; int path; int verb; } ;
typedef TYPE_1__ http_request_t ;
typedef char WCHAR ;
struct TYPE_10__ {int wFlags; char* lpszValue; } ;
struct TYPE_9__ {scalar_t__ wMilliseconds; int wSecond; int wMinute; int wHour; int wDayOfWeek; int wDay; scalar_t__ wMonth; scalar_t__ wYear; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef char* LPWSTR ;
typedef char* LPVOID ;
typedef TYPE_3__* LPHTTPHEADERW ;
typedef int* LPDWORD ;
typedef size_t INT ;
typedef int DWORD ;
typedef int BOOL ;


 int ConvertTimeString (char*) ;
 int ERROR_HTTP_HEADER_NOT_FOUND ;
 int ERROR_HTTP_INVALID_QUERY_REQUEST ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int HDR_ISREQUEST ;
 size_t HTTP_GetCustomHeaderIndex (TYPE_1__*,char*,size_t,int) ;

 int HTTP_QUERY_CONTENT_TYPE ;

 int HTTP_QUERY_FLAG_NUMBER ;
 int HTTP_QUERY_FLAG_REQUEST_HEADERS ;
 int HTTP_QUERY_FLAG_SYSTEMTIME ;
 int HTTP_QUERY_MODIFIER_FLAGS_MASK ;




 int HTTP_QUERY_UNLESS_MODIFIED_SINCE ;

 int LAST_TABLE_HEADER ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int,...) ;
 int TRUE ;
 int assert (int) ;
 int atoiW (char*) ;
 char* build_request_header (TYPE_1__*,int ,int ,char*,int ) ;
 char* build_response_header (TYPE_1__*,int ) ;
 int debugstr_w (char*) ;
 int debugstr_wn (char*,int) ;
 struct tm* gmtime (int *) ;
 char** header_lookup ;
 int heap_free (char*) ;
 int memcpy (char*,char*,int) ;
 int sprintfW (char*,char const*,int) ;
 int strlenW (char*) ;

__attribute__((used)) static DWORD HTTP_HttpQueryInfoW(http_request_t *request, DWORD dwInfoLevel,
        LPVOID lpBuffer, LPDWORD lpdwBufferLength, LPDWORD lpdwIndex)
{
    LPHTTPHEADERW lphttpHdr = ((void*)0);
    BOOL request_only = !!(dwInfoLevel & HTTP_QUERY_FLAG_REQUEST_HEADERS);
    INT requested_index = lpdwIndex ? *lpdwIndex : 0;
    DWORD level = (dwInfoLevel & ~HTTP_QUERY_MODIFIER_FLAGS_MASK);
    INT index = -1;

    EnterCriticalSection( &request->headers_section );


    switch (level)
    {
    case 133:
        if (!lpBuffer)
        {
            LeaveCriticalSection( &request->headers_section );
            return ERROR_INVALID_PARAMETER;
        }
        index = HTTP_GetCustomHeaderIndex(request, lpBuffer, requested_index, request_only);
        break;
    case 131:
        {
            LPWSTR headers;
            DWORD len = 0;
            DWORD res = ERROR_INVALID_PARAMETER;

            if (request_only)
                headers = build_request_header(request, request->verb, request->path, request->version, TRUE);
            else
                headers = build_response_header(request, TRUE);
            if (!headers)
            {
                LeaveCriticalSection( &request->headers_section );
                return ERROR_OUTOFMEMORY;
            }

            len = strlenW(headers) * sizeof(WCHAR);
            if (len + sizeof(WCHAR) > *lpdwBufferLength)
            {
                len += sizeof(WCHAR);
                res = ERROR_INSUFFICIENT_BUFFER;
            }
            else if (lpBuffer)
            {
                memcpy(lpBuffer, headers, len + sizeof(WCHAR));
                TRACE("returning data: %s\n", debugstr_wn(lpBuffer, len / sizeof(WCHAR)));
                res = ERROR_SUCCESS;
            }
            *lpdwBufferLength = len;

            heap_free(headers);
            LeaveCriticalSection( &request->headers_section );
            return res;
        }
    case 132:
        {
            LPWSTR headers;
            DWORD len;

            if (request_only)
                headers = build_request_header(request, request->verb, request->path, request->version, FALSE);
            else
                headers = build_response_header(request, FALSE);

            if (!headers)
            {
                LeaveCriticalSection( &request->headers_section );
                return ERROR_OUTOFMEMORY;
            }

            len = strlenW(headers) * sizeof(WCHAR);
            if (len > *lpdwBufferLength)
            {
                *lpdwBufferLength = len;
                heap_free(headers);
                LeaveCriticalSection( &request->headers_section );
                return ERROR_INSUFFICIENT_BUFFER;
            }

            if (lpBuffer)
            {
                DWORD i;

                TRACE("returning data: %s\n", debugstr_wn(headers, len / sizeof(WCHAR)));

                for (i = 0; i < len / sizeof(WCHAR); i++)
                {
                    if (headers[i] == '\n')
                        headers[i] = 0;
                }
                memcpy(lpBuffer, headers, len);
            }
            *lpdwBufferLength = len - sizeof(WCHAR);

            heap_free(headers);
            LeaveCriticalSection( &request->headers_section );
            return ERROR_SUCCESS;
        }
    case 129:
        if (request->statusText)
        {
            DWORD len = strlenW(request->statusText);
            if (len + 1 > *lpdwBufferLength/sizeof(WCHAR))
            {
                *lpdwBufferLength = (len + 1) * sizeof(WCHAR);
                LeaveCriticalSection( &request->headers_section );
                return ERROR_INSUFFICIENT_BUFFER;
            }
            if (lpBuffer)
            {
                memcpy(lpBuffer, request->statusText, (len + 1) * sizeof(WCHAR));
                TRACE("returning data: %s\n", debugstr_wn(lpBuffer, len));
            }
            *lpdwBufferLength = len * sizeof(WCHAR);
            LeaveCriticalSection( &request->headers_section );
            return ERROR_SUCCESS;
        }
        break;
    case 128:
        if (request->version)
        {
            DWORD len = strlenW(request->version);
            if (len + 1 > *lpdwBufferLength/sizeof(WCHAR))
            {
                *lpdwBufferLength = (len + 1) * sizeof(WCHAR);
                LeaveCriticalSection( &request->headers_section );
                return ERROR_INSUFFICIENT_BUFFER;
            }
            if (lpBuffer)
            {
                memcpy(lpBuffer, request->version, (len + 1) * sizeof(WCHAR));
                TRACE("returning data: %s\n", debugstr_wn(lpBuffer, len));
            }
            *lpdwBufferLength = len * sizeof(WCHAR);
            LeaveCriticalSection( &request->headers_section );
            return ERROR_SUCCESS;
        }
        break;
    case 134:
        index = HTTP_GetCustomHeaderIndex(request, header_lookup[request->read_gzip ? HTTP_QUERY_CONTENT_TYPE : level],
                requested_index,request_only);
        break;
    case 130: {
        DWORD res = ERROR_SUCCESS;

        if(request_only)
        {
            LeaveCriticalSection( &request->headers_section );
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

            size = sprintfW(buf, formatW, request->status_code) * sizeof(WCHAR);

            if(size <= *lpdwBufferLength) {
                memcpy(lpBuffer, buf, size+sizeof(WCHAR));
            }else {
                size += sizeof(WCHAR);
                res = ERROR_INSUFFICIENT_BUFFER;
            }

            *lpdwBufferLength = size;
        }
        LeaveCriticalSection( &request->headers_section );
        return res;
    }
    default:
        assert (LAST_TABLE_HEADER == (HTTP_QUERY_UNLESS_MODIFIED_SINCE + 1));

        if (level < LAST_TABLE_HEADER && header_lookup[level])
            index = HTTP_GetCustomHeaderIndex(request, header_lookup[level],
                                              requested_index,request_only);
    }

    if (index >= 0)
        lphttpHdr = &request->custHeaders[index];


    if (!lphttpHdr ||
        ((dwInfoLevel & HTTP_QUERY_FLAG_REQUEST_HEADERS) &&
         (~lphttpHdr->wFlags & HDR_ISREQUEST)))
    {
        LeaveCriticalSection( &request->headers_section );
        return ERROR_HTTP_HEADER_NOT_FOUND;
    }


    if (dwInfoLevel & HTTP_QUERY_FLAG_NUMBER && lpBuffer)
    {
        *(int *)lpBuffer = atoiW(lphttpHdr->lpszValue);
        TRACE(" returning number: %d\n", *(int *)lpBuffer);
     }
    else if (dwInfoLevel & HTTP_QUERY_FLAG_SYSTEMTIME && lpBuffer)
    {
        time_t tmpTime;
        struct tm tmpTM;
        SYSTEMTIME *STHook;

        tmpTime = ConvertTimeString(lphttpHdr->lpszValue);

        tmpTM = *gmtime(&tmpTime);
        STHook = (SYSTEMTIME *)lpBuffer;
        STHook->wDay = tmpTM.tm_mday;
        STHook->wHour = tmpTM.tm_hour;
        STHook->wMilliseconds = 0;
        STHook->wMinute = tmpTM.tm_min;
        STHook->wDayOfWeek = tmpTM.tm_wday;
        STHook->wMonth = tmpTM.tm_mon + 1;
        STHook->wSecond = tmpTM.tm_sec;
        STHook->wYear = 1900+tmpTM.tm_year;

        TRACE(" returning time: %04d/%02d/%02d - %d - %02d:%02d:%02d.%02d\n",
              STHook->wYear, STHook->wMonth, STHook->wDay, STHook->wDayOfWeek,
              STHook->wHour, STHook->wMinute, STHook->wSecond, STHook->wMilliseconds);
    }
    else if (lphttpHdr->lpszValue)
    {
        DWORD len = (strlenW(lphttpHdr->lpszValue) + 1) * sizeof(WCHAR);

        if (len > *lpdwBufferLength)
        {
            *lpdwBufferLength = len;
            LeaveCriticalSection( &request->headers_section );
            return ERROR_INSUFFICIENT_BUFFER;
        }
        if (lpBuffer)
        {
            memcpy(lpBuffer, lphttpHdr->lpszValue, len);
            TRACE("! returning string: %s\n", debugstr_w(lpBuffer));
        }
        *lpdwBufferLength = len - sizeof(WCHAR);
    }
    if (lpdwIndex) (*lpdwIndex)++;

    LeaveCriticalSection( &request->headers_section );
    return ERROR_SUCCESS;
}
