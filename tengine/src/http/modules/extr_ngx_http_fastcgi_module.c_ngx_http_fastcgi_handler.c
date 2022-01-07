
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {scalar_t__ tag; } ;
struct TYPE_21__ {TYPE_5__* input_filter_ctx; int input_filter; int input_filter_init; TYPE_2__* pipe; int buffering; int finalize_request; int abort_request; int process_header; int reinit_request; int create_request; int create_key; int * caches; TYPE_3__* conf; TYPE_1__ output; int schema; } ;
typedef TYPE_4__ ngx_http_upstream_t ;
struct TYPE_22__ {int request_body_no_buffering; int pool; scalar_t__ state; TYPE_4__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_23__ {int caches; } ;
typedef TYPE_6__ ngx_http_fastcgi_main_conf_t ;
struct TYPE_20__ {scalar_t__ pass_request_body; int request_buffering; int buffering; } ;
struct TYPE_24__ {TYPE_3__ upstream; scalar_t__ fastcgi_lengths; } ;
typedef TYPE_7__ ngx_http_fastcgi_loc_conf_t ;
typedef int ngx_http_fastcgi_ctx_t ;
typedef int ngx_event_pipe_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_19__ {TYPE_5__* input_ctx; int input_filter; } ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 scalar_t__ NGX_OK ;
 int ngx_http_fastcgi_abort_request ;
 int ngx_http_fastcgi_create_key ;
 int ngx_http_fastcgi_create_request ;
 scalar_t__ ngx_http_fastcgi_eval (TYPE_5__*,TYPE_7__*) ;
 int ngx_http_fastcgi_finalize_request ;
 int ngx_http_fastcgi_input_filter ;
 int ngx_http_fastcgi_input_filter_init ;
 int ngx_http_fastcgi_module ;
 int ngx_http_fastcgi_non_buffered_filter ;
 int ngx_http_fastcgi_process_header ;
 int ngx_http_fastcgi_reinit_request ;
 TYPE_7__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 TYPE_6__* ngx_http_get_module_main_conf (TYPE_5__*,int ) ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_5__*,int ) ;
 int ngx_http_set_ctx (TYPE_5__*,int *,int ) ;
 scalar_t__ ngx_http_upstream_create (TYPE_5__*) ;
 int ngx_http_upstream_init ;
 void* ngx_pcalloc (int ,int) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_fastcgi_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_upstream_t *u;
    ngx_http_fastcgi_ctx_t *f;
    ngx_http_fastcgi_loc_conf_t *flcf;




    if (ngx_http_upstream_create(r) != NGX_OK) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    f = ngx_pcalloc(r->pool, sizeof(ngx_http_fastcgi_ctx_t));
    if (f == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ngx_http_set_ctx(r, f, ngx_http_fastcgi_module);

    flcf = ngx_http_get_module_loc_conf(r, ngx_http_fastcgi_module);

    if (flcf->fastcgi_lengths) {
        if (ngx_http_fastcgi_eval(r, flcf) != NGX_OK) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
    }

    u = r->upstream;

    ngx_str_set(&u->schema, "fastcgi://");
    u->output.tag = (ngx_buf_tag_t) &ngx_http_fastcgi_module;

    u->conf = &flcf->upstream;
    u->create_request = ngx_http_fastcgi_create_request;
    u->reinit_request = ngx_http_fastcgi_reinit_request;
    u->process_header = ngx_http_fastcgi_process_header;
    u->abort_request = ngx_http_fastcgi_abort_request;
    u->finalize_request = ngx_http_fastcgi_finalize_request;
    r->state = 0;

    u->buffering = flcf->upstream.buffering;

    u->pipe = ngx_pcalloc(r->pool, sizeof(ngx_event_pipe_t));
    if (u->pipe == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    u->pipe->input_filter = ngx_http_fastcgi_input_filter;
    u->pipe->input_ctx = r;

    u->input_filter_init = ngx_http_fastcgi_input_filter_init;
    u->input_filter = ngx_http_fastcgi_non_buffered_filter;
    u->input_filter_ctx = r;

    if (!flcf->upstream.request_buffering
        && flcf->upstream.pass_request_body)
    {
        r->request_body_no_buffering = 1;
    }

    rc = ngx_http_read_client_request_body(r, ngx_http_upstream_init);

    if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return rc;
    }

    return NGX_DONE;
}
