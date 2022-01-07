
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {size_t len; int * data; } ;
struct TYPE_16__ {scalar_t__ status_n; TYPE_7__ status_line; } ;
struct TYPE_17__ {scalar_t__ (* process_header ) (TYPE_6__*) ;TYPE_3__ headers_in; TYPE_1__* state; int buffer; } ;
typedef TYPE_4__ ngx_http_upstream_t ;
struct TYPE_18__ {scalar_t__ code; size_t end; size_t start; } ;
typedef TYPE_5__ ngx_http_status_t ;
struct TYPE_19__ {TYPE_2__* connection; int pool; TYPE_4__* upstream; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_15__ {int log; } ;
struct TYPE_14__ {scalar_t__ status; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_6__*,int ) ;
 scalar_t__ ngx_http_parse_status_line (TYPE_6__*,int *,TYPE_5__*) ;
 int ngx_http_scgi_module ;
 scalar_t__ ngx_http_scgi_process_header (TYPE_6__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,scalar_t__,TYPE_7__*) ;
 int ngx_memcpy (int *,size_t,size_t) ;
 int * ngx_pnalloc (int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_scgi_process_status_line(ngx_http_request_t *r)
{
    size_t len;
    ngx_int_t rc;
    ngx_http_status_t *status;
    ngx_http_upstream_t *u;

    status = ngx_http_get_module_ctx(r, ngx_http_scgi_module);

    if (status == ((void*)0)) {
        return NGX_ERROR;
    }

    u = r->upstream;

    rc = ngx_http_parse_status_line(r, &u->buffer, status);

    if (rc == NGX_AGAIN) {
        return rc;
    }

    if (rc == NGX_ERROR) {
        u->process_header = ngx_http_scgi_process_header;
        return ngx_http_scgi_process_header(r);
    }

    if (u->state && u->state->status == 0) {
        u->state->status = status->code;
    }

    u->headers_in.status_n = status->code;

    len = status->end - status->start;
    u->headers_in.status_line.len = len;

    u->headers_in.status_line.data = ngx_pnalloc(r->pool, len);
    if (u->headers_in.status_line.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(u->headers_in.status_line.data, status->start, len);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http scgi status %ui \"%V\"",
                   u->headers_in.status_n, &u->headers_in.status_line);

    u->process_header = ngx_http_scgi_process_header;

    return ngx_http_scgi_process_header(r);
}
