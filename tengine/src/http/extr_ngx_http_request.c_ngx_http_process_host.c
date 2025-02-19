
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_16__ {scalar_t__ len; } ;
struct TYPE_15__ {TYPE_4__ value; } ;
typedef TYPE_3__ ngx_table_elt_t ;
typedef TYPE_4__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {TYPE_4__ server; TYPE_3__* host; } ;
struct TYPE_17__ {TYPE_2__ headers_in; TYPE_1__* connection; int pool; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_13__ {int log; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_BAD_REQUEST ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_http_close_request (TYPE_5__*,int ) ;
 int ngx_http_finalize_request (TYPE_5__*,int ) ;
 scalar_t__ ngx_http_set_virtual_server (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ ngx_http_validate_host (TYPE_4__*,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_process_host(ngx_http_request_t *r, ngx_table_elt_t *h,
    ngx_uint_t offset)
{
    ngx_int_t rc;
    ngx_str_t host;

    if (r->headers_in.host == ((void*)0)) {
        r->headers_in.host = h;
    }

    host = h->value;

    rc = ngx_http_validate_host(&host, r->pool, 0);

    if (rc == NGX_DECLINED) {
        ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                      "client sent invalid host header");
        ngx_http_finalize_request(r, NGX_HTTP_BAD_REQUEST);
        return NGX_ERROR;
    }

    if (rc == NGX_ERROR) {
        ngx_http_close_request(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return NGX_ERROR;
    }

    if (r->headers_in.server.len) {
        return NGX_OK;
    }

    if (ngx_http_set_virtual_server(r, &host) == NGX_ERROR) {
        return NGX_ERROR;
    }

    r->headers_in.server = host;

    return NGX_OK;
}
