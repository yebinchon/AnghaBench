
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {scalar_t__ tag; } ;
struct TYPE_17__ {int multi_mode; TYPE_6__* input_filter_ctx; int input_filter; int input_filter_init; scalar_t__ buffering; int * pipe; int finalize_request; int abort_request; int process_header; int reinit_request; int create_request; TYPE_2__* conf; TYPE_1__ output; int schema; } ;
typedef TYPE_3__ ngx_http_upstream_t ;
struct TYPE_18__ {scalar_t__ request_body_no_buffering; int pool; scalar_t__ state; TYPE_3__* upstream; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_16__ {scalar_t__ buffering; } ;
struct TYPE_19__ {TYPE_2__ upstream; } ;
typedef TYPE_5__ ngx_http_dubbo_loc_conf_t ;
struct TYPE_20__ {TYPE_4__* request; } ;
typedef TYPE_6__ ngx_http_dubbo_ctx_t ;
typedef int ngx_event_pipe_t ;
typedef scalar_t__ ngx_buf_tag_t ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_MULTI_UPS_NEED_MULTI ;
 scalar_t__ NGX_OK ;
 int ngx_http_dubbo_abort_request ;
 int ngx_http_dubbo_create_request ;
 int ngx_http_dubbo_filter ;
 int ngx_http_dubbo_filter_init ;
 int ngx_http_dubbo_finalize_request ;
 int ngx_http_dubbo_module ;
 int ngx_http_dubbo_parse_filter ;
 int ngx_http_dubbo_reinit_request ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_4__*,int ) ;
 scalar_t__ ngx_http_set_content_type (TYPE_4__*) ;
 int ngx_http_set_ctx (TYPE_4__*,TYPE_6__*,int ) ;
 scalar_t__ ngx_http_upstream_create (TYPE_4__*) ;
 int ngx_http_upstream_init ;
 void* ngx_pcalloc (int ,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_dubbo_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_upstream_t *u;
    ngx_http_dubbo_ctx_t *ctx;
    ngx_http_dubbo_loc_conf_t *dlcf;

    if (ngx_http_upstream_create(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_dubbo_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ctx->request = r;

    ngx_http_set_ctx(r, ctx, ngx_http_dubbo_module);

    u = r->upstream;

    ngx_str_set(&u->schema, "dubbo://");
    u->output.tag = (ngx_buf_tag_t) &ngx_http_dubbo_module;

    dlcf = ngx_http_get_module_loc_conf(r, ngx_http_dubbo_module);

    u->conf = &dlcf->upstream;

    if (ngx_http_set_content_type(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    u->create_request = ngx_http_dubbo_create_request;
    u->reinit_request = ngx_http_dubbo_reinit_request;
    u->process_header = ngx_http_dubbo_parse_filter;
    u->abort_request = ngx_http_dubbo_abort_request;
    u->finalize_request = ngx_http_dubbo_finalize_request;

    r->state = 0;
    u->buffering = 0;


    u->input_filter_init = ngx_http_dubbo_filter_init;
    u->input_filter = ngx_http_dubbo_filter;
    u->input_filter_ctx = ctx;


    r->request_body_no_buffering = 0;

    u->multi_mode = NGX_MULTI_UPS_NEED_MULTI;

    rc = ngx_http_read_client_request_body(r, ngx_http_upstream_init);

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return rc;
    }

    return NGX_DONE;
}
