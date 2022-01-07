
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t nCustHeaders; TYPE_2__* custHeaders; } ;
typedef TYPE_1__ http_request_t ;
struct TYPE_7__ {int lpszValue; int lpszField; } ;
typedef int HTTPHEADERW ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int heap_free (int ) ;
 int memmove (TYPE_2__*,TYPE_2__*,size_t) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static BOOL HTTP_DeleteCustomHeader(http_request_t *request, DWORD index)
{
    if( request->nCustHeaders <= 0 )
        return FALSE;
    if( index >= request->nCustHeaders )
        return FALSE;
    request->nCustHeaders--;

    heap_free(request->custHeaders[index].lpszField);
    heap_free(request->custHeaders[index].lpszValue);

    memmove( &request->custHeaders[index], &request->custHeaders[index+1],
             (request->nCustHeaders - index)* sizeof(HTTPHEADERW) );
    memset( &request->custHeaders[request->nCustHeaders], 0, sizeof(HTTPHEADERW) );

    return TRUE;
}
