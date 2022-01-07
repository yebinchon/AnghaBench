
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ content_read; scalar_t__ content_length; } ;
typedef TYPE_1__ netconn_stream_t ;
struct TYPE_5__ {int netconn; } ;
typedef TYPE_2__ http_request_t ;
typedef int data_stream_t ;
typedef int BOOL ;


 int is_valid_netconn (int ) ;

__attribute__((used)) static BOOL netconn_end_of_data(data_stream_t *stream, http_request_t *req)
{
    netconn_stream_t *netconn_stream = (netconn_stream_t*)stream;
    return netconn_stream->content_read == netconn_stream->content_length || !is_valid_netconn(req->netconn);
}
