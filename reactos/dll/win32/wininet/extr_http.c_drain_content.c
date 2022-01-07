
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int read_section; TYPE_3__* data_stream; int verb; int netconn; } ;
typedef TYPE_2__ http_request_t ;
struct TYPE_8__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {int (* drain_content ) (TYPE_3__*,TYPE_2__*,int ) ;} ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_NO_DATA ;
 int ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,int ) ;
 int is_valid_netconn (int ) ;
 int strcmpW (int ,int ) ;
 int stub1 (TYPE_3__*,TYPE_2__*,int ) ;
 int szHEAD ;

__attribute__((used)) static DWORD drain_content(http_request_t *req, BOOL blocking)
{
    DWORD res;

    TRACE("%p\n", req->netconn);

    if(!is_valid_netconn(req->netconn))
        return ERROR_NO_DATA;

    if(!strcmpW(req->verb, szHEAD))
        return ERROR_SUCCESS;

    EnterCriticalSection( &req->read_section );
    res = req->data_stream->vtbl->drain_content(req->data_stream, req, blocking);
    LeaveCriticalSection( &req->read_section );
    return res;
}
