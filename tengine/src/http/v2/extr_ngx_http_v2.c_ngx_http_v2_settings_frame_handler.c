
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {TYPE_6__* first; } ;
typedef TYPE_1__ ngx_http_v2_out_frame_t ;
struct TYPE_8__ {int pool; } ;
typedef TYPE_2__ ngx_http_v2_connection_t ;
struct TYPE_9__ {scalar_t__ pos; scalar_t__ last; } ;
typedef TYPE_3__ ngx_buf_t ;
struct TYPE_10__ {TYPE_3__* buf; } ;


 int NGX_AGAIN ;
 int NGX_OK ;
 int ngx_free_chain (int ,TYPE_6__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_settings_frame_handler(ngx_http_v2_connection_t *h2c,
    ngx_http_v2_out_frame_t *frame)
{
    ngx_buf_t *buf;

    buf = frame->first->buf;

    if (buf->pos != buf->last) {
        return NGX_AGAIN;
    }

    ngx_free_chain(h2c->pool, frame->first);

    return NGX_OK;
}
