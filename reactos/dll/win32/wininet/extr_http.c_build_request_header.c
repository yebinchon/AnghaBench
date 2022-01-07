
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nCustHeaders; int headers_section; TYPE_1__* custHeaders; } ;
typedef TYPE_2__ http_request_t ;
typedef char WCHAR ;
typedef size_t UINT ;
struct TYPE_4__ {int wFlags; char* lpszField; char* lpszValue; } ;
typedef char* LPWSTR ;
typedef char const* LPCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int EnterCriticalSection (int *) ;
 int HDR_ISREQUEST ;
 char* HTTP_build_req (char const**,int) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (char*) ;
 char** heap_alloc (int) ;
 int heap_free (char const**) ;

__attribute__((used)) static WCHAR* build_request_header(http_request_t *request, const WCHAR *verb,
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

    EnterCriticalSection( &request->headers_section );


    len = request->nCustHeaders * 5 + 10;
    if (!(req = heap_alloc( len * sizeof(const WCHAR *) )))
    {
        LeaveCriticalSection( &request->headers_section );
        return ((void*)0);
    }


    n = 0;
    req[n++] = verb;
    req[n++] = szSpace;
    req[n++] = path;
    req[n++] = szSpace;
    req[n++] = version;
    if (use_cr)
        req[n++] = szCr;
    req[n++] = szLf;


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

            TRACE("Adding custom header %s (%s)\n",
                   debugstr_w(request->custHeaders[i].lpszField),
                   debugstr_w(request->custHeaders[i].lpszValue));
        }
    }
    if (use_cr)
        req[n++] = szCr;
    req[n++] = szLf;
    req[n] = ((void*)0);

    requestString = HTTP_build_req( req, 4 );
    heap_free( req );
    LeaveCriticalSection( &request->headers_section );
    return requestString;
}
