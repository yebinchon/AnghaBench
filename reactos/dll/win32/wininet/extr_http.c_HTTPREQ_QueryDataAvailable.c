
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_16__ {scalar_t__ dwError; } ;
typedef TYPE_4__ object_header_t ;
struct TYPE_12__ {int dwContext; } ;
struct TYPE_17__ {int read_size; TYPE_10__ hdr; int read_section; TYPE_3__* session; } ;
typedef TYPE_5__ http_request_t ;
typedef int avail ;
struct TYPE_15__ {TYPE_2__* appInfo; } ;
struct TYPE_13__ {int dwFlags; } ;
struct TYPE_14__ {TYPE_1__ hdr; } ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_INTERNET_INTERNAL_ERROR ;
 scalar_t__ ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int INTERNET_FLAG_ASYNC ;
 scalar_t__ INTERNET_HANDLE_IN_USE ;
 int INTERNET_STATUS_RECEIVING_RESPONSE ;
 int INTERNET_STATUS_RESPONSE_RECEIVED ;
 int INTERNET_SendCallback (TYPE_10__*,int ,int ,int*,int) ;
 int IRF_ASYNC ;
 int IRF_NO_WAIT ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,TYPE_5__*,int*,int,int ) ;
 int TRUE ;
 scalar_t__ TryEnterCriticalSection (int *) ;
 int WSAEWOULDBLOCK ;
 int async_read (TYPE_5__*,int *,int ,int ,int*) ;
 int end_of_read_data (TYPE_5__*) ;
 int refill_read_buffer (TYPE_5__*,int,int*) ;

__attribute__((used)) static DWORD HTTPREQ_QueryDataAvailable(object_header_t *hdr, DWORD *available, DWORD flags, DWORD_PTR ctx)
{
    http_request_t *req = (http_request_t*)hdr;
    DWORD res = ERROR_SUCCESS, avail = 0, error = ERROR_SUCCESS;
    BOOL allow_blocking, notify_received = FALSE;

    TRACE("(%p %p %x %lx)\n", req, available, flags, ctx);

    if (flags & ~(IRF_ASYNC|IRF_NO_WAIT))
        FIXME("these dwFlags aren't implemented: 0x%x\n", flags & ~(IRF_ASYNC|IRF_NO_WAIT));

    *available = 0;
    allow_blocking = !(req->session->appInfo->hdr.dwFlags & INTERNET_FLAG_ASYNC);

    if(allow_blocking || TryEnterCriticalSection(&req->read_section)) {
        if(allow_blocking)
            EnterCriticalSection(&req->read_section);
        if(hdr->dwError == ERROR_SUCCESS)
            hdr->dwError = INTERNET_HANDLE_IN_USE;
        else if(hdr->dwError == INTERNET_HANDLE_IN_USE)
            hdr->dwError = ERROR_INTERNET_INTERNAL_ERROR;

        avail = req->read_size;

        if(!avail && !end_of_read_data(req)) {
            LeaveCriticalSection(&req->read_section);
            INTERNET_SendCallback(&req->hdr, req->hdr.dwContext, INTERNET_STATUS_RECEIVING_RESPONSE, ((void*)0), 0);
            EnterCriticalSection( &req->read_section );
            notify_received = TRUE;

            res = refill_read_buffer(req, allow_blocking, &avail);
        }

        if(hdr->dwError == INTERNET_HANDLE_IN_USE)
            hdr->dwError = ERROR_SUCCESS;
        else
            error = hdr->dwError;

        LeaveCriticalSection( &req->read_section );
    }else {
        res = WSAEWOULDBLOCK;
    }

    if(res == WSAEWOULDBLOCK)
        return async_read(req, ((void*)0), 0, 0, available);

    if (res != ERROR_SUCCESS)
        return res;

    *available = avail;
    if(notify_received)
        INTERNET_SendCallback(&req->hdr, req->hdr.dwContext, INTERNET_STATUS_RESPONSE_RECEIVED,
                &avail, sizeof(avail));
    return error;
}
