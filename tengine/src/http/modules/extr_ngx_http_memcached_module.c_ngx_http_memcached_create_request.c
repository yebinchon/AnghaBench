
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_21__ {int len; int data; scalar_t__ not_found; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_22__ {TYPE_2__* connection; TYPE_1__* upstream; int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_23__ {int index; } ;
typedef TYPE_5__ ngx_http_memcached_loc_conf_t ;
struct TYPE_27__ {int len; int * data; } ;
struct TYPE_24__ {TYPE_9__ key; } ;
typedef TYPE_6__ ngx_http_memcached_ctx_t ;
struct TYPE_25__ {int * next; TYPE_8__* buf; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_26__ {int * last; } ;
typedef TYPE_8__ ngx_buf_t ;
struct TYPE_20__ {int log; } ;
struct TYPE_19__ {TYPE_7__* request_bufs; } ;
typedef int CRLF ;


 int CR ;
 int LF ;
 int NGX_ERROR ;
 int NGX_ESCAPE_MEMCACHED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 TYPE_7__* ngx_alloc_chain_link (int ) ;
 int * ngx_copy (int *,int ,int) ;
 TYPE_8__* ngx_create_temp_buf (int ,size_t) ;
 int ngx_escape_uri (int *,int ,int,int ) ;
 TYPE_3__* ngx_http_get_indexed_variable (TYPE_4__*,int ) ;
 TYPE_6__* ngx_http_get_module_ctx (TYPE_4__*,int ) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_http_memcached_module ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_9__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_memcached_create_request(ngx_http_request_t *r)
{
    size_t len;
    uintptr_t escape;
    ngx_buf_t *b;
    ngx_chain_t *cl;
    ngx_http_memcached_ctx_t *ctx;
    ngx_http_variable_value_t *vv;
    ngx_http_memcached_loc_conf_t *mlcf;

    mlcf = ngx_http_get_module_loc_conf(r, ngx_http_memcached_module);

    vv = ngx_http_get_indexed_variable(r, mlcf->index);

    if (vv == ((void*)0) || vv->not_found || vv->len == 0) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "the \"$memcached_key\" variable is not set");
        return NGX_ERROR;
    }

    escape = 2 * ngx_escape_uri(((void*)0), vv->data, vv->len, NGX_ESCAPE_MEMCACHED);

    len = sizeof("get ") - 1 + vv->len + escape + sizeof(CRLF) - 1;

    b = ngx_create_temp_buf(r->pool, len);
    if (b == ((void*)0)) {
        return NGX_ERROR;
    }

    cl = ngx_alloc_chain_link(r->pool);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    cl->buf = b;
    cl->next = ((void*)0);

    r->upstream->request_bufs = cl;

    *b->last++ = 'g'; *b->last++ = 'e'; *b->last++ = 't'; *b->last++ = ' ';

    ctx = ngx_http_get_module_ctx(r, ngx_http_memcached_module);

    ctx->key.data = b->last;

    if (escape == 0) {
        b->last = ngx_copy(b->last, vv->data, vv->len);

    } else {
        b->last = (u_char *) ngx_escape_uri(b->last, vv->data, vv->len,
                                            NGX_ESCAPE_MEMCACHED);
    }

    ctx->key.len = b->last - ctx->key.data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http memcached request: \"%V\"", &ctx->key);

    *b->last++ = CR; *b->last++ = LF;

    return NGX_OK;
}
