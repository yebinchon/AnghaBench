
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {TYPE_1__* buf; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_8__ {size_t pos; } ;
typedef TYPE_3__ ngx_buf_t ;
struct TYPE_6__ {size_t last; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_OK ;

ngx_int_t
ngx_http_lua_read_bytes(ngx_buf_t *src, ngx_chain_t *buf_in, size_t *rest,
    ssize_t bytes, ngx_log_t *log)
{
    if (bytes == 0) {
        return NGX_ERROR;
    }

    if ((size_t) bytes >= *rest) {

        buf_in->buf->last += *rest;
        src->pos += *rest;
        *rest = 0;

        return NGX_OK;
    }



    buf_in->buf->last += bytes;
    src->pos += bytes;
    *rest -= bytes;

    return NGX_AGAIN;
}
