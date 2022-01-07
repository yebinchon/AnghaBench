
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int headers_section; TYPE_2__* custHeaders; } ;
typedef TYPE_1__ http_request_t ;
typedef char WCHAR ;
struct TYPE_11__ {scalar_t__ wFlags; scalar_t__ wCount; void* lpszValue; void* lpszField; } ;
struct TYPE_10__ {char* lpszValue; scalar_t__ wFlags; } ;
typedef void* LPWSTR ;
typedef TYPE_2__* LPHTTPHEADERW ;
typedef char* LPCWSTR ;
typedef size_t INT ;
typedef TYPE_3__ HTTPHEADERW ;
typedef int DWORD ;
typedef int BOOL ;


 int COALESCEFLAGS ;
 int ERROR_HTTP_HEADER_NOT_FOUND ;
 int ERROR_HTTP_INVALID_HEADER ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 scalar_t__ HDR_COMMADELIMITED ;
 scalar_t__ HDR_ISREQUEST ;
 int HTTP_ADDHDR_FLAG_ADD_IF_NEW ;
 int HTTP_ADDHDR_FLAG_COALESCE_WITH_COMMA ;
 int HTTP_ADDHDR_FLAG_COALESCE_WITH_SEMICOLON ;
 int HTTP_ADDHDR_FLAG_REPLACE ;
 int HTTP_ADDHDR_FLAG_REQ ;
 int HTTP_DeleteCustomHeader (TYPE_1__*,size_t) ;
 size_t HTTP_GetCustomHeaderIndex (TYPE_1__*,char*,int ,int) ;
 int HTTP_InsertCustomHeader (TYPE_1__*,TYPE_3__*) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int,...) ;
 int WARN (char*,size_t) ;
 int debugstr_w (char*) ;
 void* heap_realloc (char*,size_t) ;
 int memcpy (char*,char*,size_t) ;
 size_t strlenW (char*) ;

__attribute__((used)) static DWORD HTTP_ProcessHeader(http_request_t *request, LPCWSTR field, LPCWSTR value, DWORD dwModifier)
{
    LPHTTPHEADERW lphttpHdr;
    INT index;
    BOOL request_only = !!(dwModifier & HTTP_ADDHDR_FLAG_REQ);
    DWORD res = ERROR_SUCCESS;

    TRACE("--> %s: %s - 0x%08x\n", debugstr_w(field), debugstr_w(value), dwModifier);

    EnterCriticalSection( &request->headers_section );

    index = HTTP_GetCustomHeaderIndex(request, field, 0, request_only);
    if (index >= 0)
    {
        lphttpHdr = &request->custHeaders[index];


        if (dwModifier & HTTP_ADDHDR_FLAG_REPLACE)
        {
            HTTP_DeleteCustomHeader( request, index );

            if (value && value[0])
            {
                HTTPHEADERW hdr;

                hdr.lpszField = (LPWSTR)field;
                hdr.lpszValue = (LPWSTR)value;
                hdr.wFlags = hdr.wCount = 0;

                if (dwModifier & HTTP_ADDHDR_FLAG_REQ)
                    hdr.wFlags |= HDR_ISREQUEST;

                res = HTTP_InsertCustomHeader( request, &hdr );
            }

            goto out;
        }


        if (dwModifier & HTTP_ADDHDR_FLAG_ADD_IF_NEW)
        {
            res = ERROR_HTTP_INVALID_HEADER;
            goto out;
        }


        if (dwModifier & COALESCEFLAGS)
        {
            LPWSTR lpsztmp;
            WCHAR ch = 0;
            INT len = 0;
            INT origlen = strlenW(lphttpHdr->lpszValue);
            INT valuelen = strlenW(value);


            if (dwModifier & HTTP_ADDHDR_FLAG_REQ)
                lphttpHdr->wFlags |= HDR_ISREQUEST;
            else
                lphttpHdr->wFlags &= ~HDR_ISREQUEST;

            if (dwModifier & HTTP_ADDHDR_FLAG_COALESCE_WITH_COMMA)
            {
                ch = ',';
                lphttpHdr->wFlags |= HDR_COMMADELIMITED;
            }
            else if (dwModifier & HTTP_ADDHDR_FLAG_COALESCE_WITH_SEMICOLON)
            {
                ch = ';';
                lphttpHdr->wFlags |= HDR_COMMADELIMITED;
            }

            len = origlen + valuelen + ((ch > 0) ? 2 : 0);

            lpsztmp = heap_realloc(lphttpHdr->lpszValue, (len+1)*sizeof(WCHAR));
            if (lpsztmp)
            {
                lphttpHdr->lpszValue = lpsztmp;

                if (ch > 0)
                {
                    lphttpHdr->lpszValue[origlen] = ch;
                    origlen++;
                    lphttpHdr->lpszValue[origlen] = ' ';
                    origlen++;
                }

                memcpy(&lphttpHdr->lpszValue[origlen], value, valuelen*sizeof(WCHAR));
                lphttpHdr->lpszValue[len] = '\0';
            }
            else
            {
                WARN("heap_realloc (%d bytes) failed\n",len+1);
                res = ERROR_OUTOFMEMORY;
            }

            goto out;
        }
    }


    if ((dwModifier & ~HTTP_ADDHDR_FLAG_REQ) == HTTP_ADDHDR_FLAG_REPLACE)
    {
        res = ERROR_HTTP_HEADER_NOT_FOUND;
        goto out;
    }


    if (value)
    {
        HTTPHEADERW hdr;

        hdr.lpszField = (LPWSTR)field;
        hdr.lpszValue = (LPWSTR)value;
        hdr.wFlags = hdr.wCount = 0;

        if (dwModifier & HTTP_ADDHDR_FLAG_REQ)
            hdr.wFlags |= HDR_ISREQUEST;

        res = HTTP_InsertCustomHeader( request, &hdr );
        goto out;
    }


out:
    TRACE("<-- %d\n", res);
    LeaveCriticalSection( &request->headers_section );
    return res;
}
