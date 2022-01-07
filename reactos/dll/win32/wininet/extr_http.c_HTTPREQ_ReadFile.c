
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int read ;
struct TYPE_15__ {scalar_t__ dwError; } ;
typedef TYPE_4__ object_header_t ;
struct TYPE_17__ {int dwContext; } ;
struct TYPE_16__ {int read_size; int read_buf; int read_pos; TYPE_9__ hdr; int read_section; TYPE_3__* session; } ;
typedef TYPE_5__ http_request_t ;
struct TYPE_14__ {TYPE_2__* appInfo; } ;
struct TYPE_12__ {int dwFlags; } ;
struct TYPE_13__ {TYPE_1__ hdr; } ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_INTERNET_INTERNAL_ERROR ;
 scalar_t__ ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int HTTPREQ_Read (TYPE_5__*,char*,int,int*,int) ;
 int INTERNET_FLAG_ASYNC ;
 scalar_t__ INTERNET_HANDLE_IN_USE ;
 int INTERNET_STATUS_RECEIVING_RESPONSE ;
 int INTERNET_STATUS_RESPONSE_RECEIVED ;
 int INTERNET_SendCallback (TYPE_9__*,int ,int ,int*,int) ;
 int IRF_ASYNC ;
 int IRF_NO_WAIT ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,TYPE_5__*,void*,int,int) ;
 int TRUE ;
 scalar_t__ TryEnterCriticalSection (int *) ;
 int WSAEWOULDBLOCK ;
 int async_read (TYPE_5__*,void*,int,int,int*) ;
 int end_of_read_data (TYPE_5__*) ;
 int memcpy (void*,int,int) ;
 int min (int,int) ;

__attribute__((used)) static DWORD HTTPREQ_ReadFile(object_header_t *hdr, void *buf, DWORD size, DWORD *ret_read,
        DWORD flags, DWORD_PTR context)
{
    http_request_t *req = (http_request_t*)hdr;
    DWORD res = ERROR_SUCCESS, read = 0, cread, error = ERROR_SUCCESS;
    BOOL allow_blocking, notify_received = FALSE;

    TRACE("(%p %p %u %x)\n", req, buf, size, flags);

    if (flags & ~(IRF_ASYNC|IRF_NO_WAIT))
        FIXME("these dwFlags aren't implemented: 0x%x\n", flags & ~(IRF_ASYNC|IRF_NO_WAIT));

    allow_blocking = !(req->session->appInfo->hdr.dwFlags & INTERNET_FLAG_ASYNC);

    if(allow_blocking || TryEnterCriticalSection(&req->read_section)) {
        if(allow_blocking)
            EnterCriticalSection(&req->read_section);
        if(hdr->dwError == ERROR_SUCCESS)
            hdr->dwError = INTERNET_HANDLE_IN_USE;
        else if(hdr->dwError == INTERNET_HANDLE_IN_USE)
            hdr->dwError = ERROR_INTERNET_INTERNAL_ERROR;

        if(req->read_size) {
            read = min(size, req->read_size);
            memcpy(buf, req->read_buf + req->read_pos, read);
            req->read_size -= read;
            req->read_pos += read;
        }

        if(read < size && (!read || !(flags & IRF_NO_WAIT)) && !end_of_read_data(req)) {
            LeaveCriticalSection(&req->read_section);
            INTERNET_SendCallback(&req->hdr, req->hdr.dwContext, INTERNET_STATUS_RECEIVING_RESPONSE, ((void*)0), 0);
            EnterCriticalSection( &req->read_section );
            notify_received = TRUE;

            while(read < size) {
                res = HTTPREQ_Read(req, (char*)buf+read, size-read, &cread, allow_blocking);
                read += cread;
                if (res != ERROR_SUCCESS || !cread)
                    break;
            }
        }

        if(hdr->dwError == INTERNET_HANDLE_IN_USE)
            hdr->dwError = ERROR_SUCCESS;
        else
            error = hdr->dwError;

        LeaveCriticalSection( &req->read_section );
    }else {
        res = WSAEWOULDBLOCK;
    }

    if(res == WSAEWOULDBLOCK) {
        if(!(flags & IRF_NO_WAIT))
            return async_read(req, buf, size, read, ret_read);
        if(!read)
            return async_read(req, ((void*)0), 0, 0, ((void*)0));
        res = ERROR_SUCCESS;
    }

    *ret_read = read;
    if (res != ERROR_SUCCESS)
        return res;

    if(notify_received)
        INTERNET_SendCallback(&req->hdr, req->hdr.dwContext, INTERNET_STATUS_RESPONSE_RECEIVED,
                &read, sizeof(read));
    return error;
}
