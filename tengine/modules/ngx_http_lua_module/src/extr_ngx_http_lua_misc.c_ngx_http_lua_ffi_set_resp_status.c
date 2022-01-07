
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_6__ {int status; TYPE_4__ status_line; } ;
struct TYPE_8__ {TYPE_1__ headers_out; scalar_t__ err_status; TYPE_2__* connection; scalar_t__ header_sent; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_7__ {scalar_t__ fd; int log; } ;


 int NGX_DECLINED ;
 int NGX_HTTP_LUA_FFI_BAD_CONTEXT ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_str_set (TYPE_4__*,char*) ;

int
ngx_http_lua_ffi_set_resp_status(ngx_http_request_t *r, int status)
{
    if (r->connection->fd == (ngx_socket_t) -1) {
        return NGX_HTTP_LUA_FFI_BAD_CONTEXT;
    }

    if (r->header_sent) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "attempt to set ngx.status after sending out "
                      "response headers");
        return NGX_DECLINED;
    }

    r->headers_out.status = status;

    if (r->err_status) {
        r->err_status = 0;
    }

    if (status == 101) {





        ngx_str_set(&r->headers_out.status_line, "101 Switching Protocols");

    } else {
        r->headers_out.status_line.len = 0;
    }

    return NGX_OK;
}
