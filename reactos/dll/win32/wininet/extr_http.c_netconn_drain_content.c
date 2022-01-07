
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int content_length; unsigned int content_read; } ;
typedef TYPE_1__ netconn_stream_t ;
struct TYPE_5__ {int netconn; } ;
typedef TYPE_2__ http_request_t ;
typedef int data_stream_t ;
typedef int buf ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ERROR_SUCCESS ;
 int NETCON_recv (int ,int *,size_t,int ,int*) ;
 int WSAECONNABORTED ;
 int WSAEISCONN ;
 size_t min (int,unsigned int) ;

__attribute__((used)) static DWORD netconn_drain_content(data_stream_t *stream, http_request_t *req, BOOL allow_blocking)
{
    netconn_stream_t *netconn_stream = (netconn_stream_t*)stream;
    BYTE buf[1024];
    int len, res;
    size_t size;

    if(netconn_stream->content_length == ~0u)
        return WSAEISCONN;

    while(netconn_stream->content_read < netconn_stream->content_length) {
        size = min(sizeof(buf), netconn_stream->content_length-netconn_stream->content_read);
        res = NETCON_recv(req->netconn, buf, size, allow_blocking, &len);
        if(res)
            return res;
        if(!len)
            return WSAECONNABORTED;

        netconn_stream->content_read += len;
    }

    return ERROR_SUCCESS;
}
