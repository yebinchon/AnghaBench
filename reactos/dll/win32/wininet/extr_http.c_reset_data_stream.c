
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ content_read; int data_stream; } ;
struct TYPE_5__ {int read_gzip; TYPE_1__ netconn_stream; scalar_t__ read_size; scalar_t__ read_pos; int * data_stream; } ;
typedef TYPE_2__ http_request_t ;


 int FALSE ;
 int destroy_data_stream (int *) ;

__attribute__((used)) static void reset_data_stream(http_request_t *req)
{
    destroy_data_stream(req->data_stream);
    req->data_stream = &req->netconn_stream.data_stream;
    req->read_pos = req->read_size = req->netconn_stream.content_read = 0;
    req->read_gzip = FALSE;
}
