
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {int rst_sent; int skip_data; TYPE_2__* request; TYPE_1__* node; } ;
typedef TYPE_3__ ngx_http_v2_stream_t ;
typedef int ngx_http_v2_connection_t ;
struct TYPE_11__ {int (* handler ) (TYPE_4__*) ;} ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_12__ {int error; TYPE_4__* read; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_9__ {TYPE_5__* connection; } ;
struct TYPE_8__ {int id; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_v2_send_rst_stream (int *,int ,int ) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_terminate_stream(ngx_http_v2_connection_t *h2c,
    ngx_http_v2_stream_t *stream, ngx_uint_t status)
{
    ngx_event_t *rev;
    ngx_connection_t *fc;

    if (stream->rst_sent) {
        return NGX_OK;
    }

    if (ngx_http_v2_send_rst_stream(h2c, stream->node->id, status)
        == NGX_ERROR)
    {
        return NGX_ERROR;
    }

    stream->rst_sent = 1;
    stream->skip_data = 1;

    fc = stream->request->connection;
    fc->error = 1;

    rev = fc->read;
    rev->handler(rev);

    return NGX_OK;
}
