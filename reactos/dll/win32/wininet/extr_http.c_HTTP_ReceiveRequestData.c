
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ hInternet; } ;
struct TYPE_13__ {scalar_t__ read_size; TYPE_3__ hdr; TYPE_2__* session; int read_section; } ;
typedef TYPE_4__ http_request_t ;
struct TYPE_10__ {int dwInternalFlags; } ;
struct TYPE_11__ {TYPE_1__ hdr; } ;
typedef int DWORD_PTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int EnterCriticalSection (int *) ;
 int FALSE ;
 int INET_OPENURL ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,TYPE_4__*) ;
 int WARN (char*,scalar_t__,scalar_t__) ;
 scalar_t__ WSAEWOULDBLOCK ;
 int http_release_netconn (TYPE_4__*,int ) ;
 scalar_t__ refill_read_buffer (TYPE_4__*,int ,scalar_t__*) ;
 int send_request_complete (TYPE_4__*,int,scalar_t__) ;

__attribute__((used)) static void HTTP_ReceiveRequestData(http_request_t *req)
{
    DWORD res, read = 0;

    TRACE("%p\n", req);

    EnterCriticalSection( &req->read_section );

    res = refill_read_buffer(req, FALSE, &read);
    if(res == ERROR_SUCCESS)
        read += req->read_size;

    LeaveCriticalSection( &req->read_section );

    if(res != WSAEWOULDBLOCK && (res != ERROR_SUCCESS || !read)) {
        WARN("res %u read %u, closing connection\n", res, read);
        http_release_netconn(req, FALSE);
    }

    if(res != ERROR_SUCCESS && res != WSAEWOULDBLOCK) {
        send_request_complete(req, 0, res);
        return;
    }

    send_request_complete(req, req->session->hdr.dwInternalFlags & INET_OPENURL ? (DWORD_PTR)req->hdr.hInternet : 1, 0);
}
