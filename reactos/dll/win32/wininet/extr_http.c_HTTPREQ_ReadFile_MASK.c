#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  read ;
struct TYPE_15__ {scalar_t__ dwError; } ;
typedef  TYPE_4__ object_header_t ;
struct TYPE_17__ {int /*<<< orphan*/  dwContext; } ;
struct TYPE_16__ {int read_size; int read_buf; int read_pos; TYPE_9__ hdr; int /*<<< orphan*/  read_section; TYPE_3__* session; } ;
typedef  TYPE_5__ http_request_t ;
struct TYPE_14__ {TYPE_2__* appInfo; } ;
struct TYPE_12__ {int dwFlags; } ;
struct TYPE_13__ {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INTERNET_INTERNAL_ERROR ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (TYPE_5__*,char*,int,int*,int) ; 
 int INTERNET_FLAG_ASYNC ; 
 scalar_t__ INTERNET_HANDLE_IN_USE ; 
 int /*<<< orphan*/  INTERNET_STATUS_RECEIVING_RESPONSE ; 
 int /*<<< orphan*/  INTERNET_STATUS_RESPONSE_RECEIVED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int IRF_ASYNC ; 
 int IRF_NO_WAIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_5__*,void*,int,int) ; 
 int TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int WSAEWOULDBLOCK ; 
 int FUNC7 (TYPE_5__*,void*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int) ; 
 int FUNC10 (int,int) ; 

__attribute__((used)) static DWORD FUNC11(object_header_t *hdr, void *buf, DWORD size, DWORD *ret_read,
        DWORD flags, DWORD_PTR context)
{
    http_request_t *req = (http_request_t*)hdr;
    DWORD res = ERROR_SUCCESS, read = 0, cread, error = ERROR_SUCCESS;
    BOOL allow_blocking, notify_received = FALSE;

    FUNC5("(%p %p %u %x)\n", req, buf, size, flags);

    if (flags & ~(IRF_ASYNC|IRF_NO_WAIT))
        FUNC1("these dwFlags aren't implemented: 0x%x\n", flags & ~(IRF_ASYNC|IRF_NO_WAIT));

    allow_blocking = !(req->session->appInfo->hdr.dwFlags & INTERNET_FLAG_ASYNC);

    if(allow_blocking || FUNC6(&req->read_section)) {
        if(allow_blocking)
            FUNC0(&req->read_section);
        if(hdr->dwError == ERROR_SUCCESS)
            hdr->dwError = INTERNET_HANDLE_IN_USE;
        else if(hdr->dwError == INTERNET_HANDLE_IN_USE)
            hdr->dwError = ERROR_INTERNET_INTERNAL_ERROR;

        if(req->read_size) {
            read = FUNC10(size, req->read_size);
            FUNC9(buf, req->read_buf + req->read_pos, read);
            req->read_size -= read;
            req->read_pos += read;
        }

        if(read < size && (!read || !(flags & IRF_NO_WAIT)) && !FUNC8(req)) {
            FUNC4(&req->read_section);
            FUNC3(&req->hdr, req->hdr.dwContext, INTERNET_STATUS_RECEIVING_RESPONSE, NULL, 0);
            FUNC0( &req->read_section );
            notify_received = TRUE;

            while(read < size) {
                res = FUNC2(req, (char*)buf+read, size-read, &cread, allow_blocking);
                read += cread;
                if (res != ERROR_SUCCESS || !cread)
                    break;
            }
        }

        if(hdr->dwError == INTERNET_HANDLE_IN_USE)
            hdr->dwError = ERROR_SUCCESS;
        else
            error = hdr->dwError;

        FUNC4( &req->read_section );
    }else {
        res = WSAEWOULDBLOCK;
    }

    if(res == WSAEWOULDBLOCK) {
        if(!(flags & IRF_NO_WAIT))
            return FUNC7(req, buf, size, read, ret_read);
        if(!read)
            return FUNC7(req, NULL, 0, 0, NULL);
        res = ERROR_SUCCESS;
    }

    *ret_read = read;
    if (res != ERROR_SUCCESS)
        return res;

    if(notify_received)
        FUNC3(&req->hdr, req->hdr.dwContext, INTERNET_STATUS_RESPONSE_RECEIVED,
                &read, sizeof(read));
    return error;
}