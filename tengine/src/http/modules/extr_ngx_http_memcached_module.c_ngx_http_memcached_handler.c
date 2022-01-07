
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_17__ {scalar_t__ tag; } ;
struct TYPE_19__ {TYPE_6__* input_filter_ctx; int input_filter; int input_filter_init; int finalize_request; int abort_request; int process_header; int reinit_request; int create_request; int * conf; TYPE_1__ output; int schema; } ;
typedef TYPE_3__ ngx_http_upstream_t ;
struct TYPE_20__ {int method; TYPE_2__* main; int pool; TYPE_3__* upstream; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_21__ {int upstream; } ;
typedef TYPE_5__ ngx_http_memcached_loc_conf_t ;
struct TYPE_22__ {TYPE_4__* request; } ;
typedef TYPE_6__ ngx_http_memcached_ctx_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_18__ {int count; } ;


 scalar_t__ NGX_DONE ;
 int NGX_HTTP_GET ;
 int NGX_HTTP_HEAD ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_NOT_ALLOWED ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_discard_request_body (TYPE_4__*) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_http_memcached_abort_request ;
 int ngx_http_memcached_create_request ;
 int ngx_http_memcached_filter ;
 int ngx_http_memcached_filter_init ;
 int ngx_http_memcached_finalize_request ;
 int ngx_http_memcached_module ;
 int ngx_http_memcached_process_header ;
 int ngx_http_memcached_reinit_request ;
 scalar_t__ ngx_http_set_content_type (TYPE_4__*) ;
 int ngx_http_set_ctx (TYPE_4__*,TYPE_6__*,int ) ;
 scalar_t__ ngx_http_upstream_create (TYPE_4__*) ;
 int ngx_http_upstream_init (TYPE_4__*) ;
 TYPE_6__* ngx_palloc (int ,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_memcached_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_upstream_t *u;
    ngx_http_memcached_ctx_t *ctx;
    ngx_http_memcached_loc_conf_t *mlcf;

    if (!(r->method & (NGX_HTTP_GET|NGX_HTTP_HEAD))) {
        return NGX_HTTP_NOT_ALLOWED;
    }

    rc = ngx_http_discard_request_body(r);

    if (rc != NGX_OK) {
        return rc;
    }

    if (ngx_http_set_content_type(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    if (ngx_http_upstream_create(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    u = r->upstream;

    ngx_str_set(&u->schema, "memcached://");
    u->output.tag = (ngx_buf_tag_t) &ngx_http_memcached_module;

    mlcf = ngx_http_get_module_loc_conf(r, ngx_http_memcached_module);

    u->conf = &mlcf->upstream;

    u->create_request = ngx_http_memcached_create_request;
    u->reinit_request = ngx_http_memcached_reinit_request;
    u->process_header = ngx_http_memcached_process_header;
    u->abort_request = ngx_http_memcached_abort_request;
    u->finalize_request = ngx_http_memcached_finalize_request;

    ctx = ngx_palloc(r->pool, sizeof(ngx_http_memcached_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ctx->request = r;

    ngx_http_set_ctx(r, ctx, ngx_http_memcached_module);

    u->input_filter_init = ngx_http_memcached_filter_init;
    u->input_filter = ngx_http_memcached_filter;
    u->input_filter_ctx = ctx;

    r->main->count++;

    ngx_http_upstream_init(r);

    return NGX_DONE;
}
