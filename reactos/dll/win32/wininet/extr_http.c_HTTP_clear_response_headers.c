
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t nCustHeaders; int headers_section; TYPE_1__* custHeaders; } ;
typedef TYPE_2__ http_request_t ;
struct TYPE_5__ {int wFlags; int lpszValue; int lpszField; } ;
typedef size_t DWORD ;


 int EnterCriticalSection (int *) ;
 int HDR_ISREQUEST ;
 int HTTP_DeleteCustomHeader (TYPE_2__*,size_t) ;
 int LeaveCriticalSection (int *) ;

__attribute__((used)) static void HTTP_clear_response_headers( http_request_t *request )
{
    DWORD i;

    EnterCriticalSection( &request->headers_section );

    for( i=0; i<request->nCustHeaders; i++)
    {
        if( !request->custHeaders[i].lpszField )
            continue;
        if( !request->custHeaders[i].lpszValue )
            continue;
        if ( request->custHeaders[i].wFlags & HDR_ISREQUEST )
            continue;
        HTTP_DeleteCustomHeader( request, i );
        i--;
    }

    LeaveCriticalSection( &request->headers_section );
}
