
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_25__ {int msec; int sec; } ;
typedef TYPE_5__ ngx_time_t ;
typedef int ngx_table_elt_t ;
typedef void* ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_23__ {int content_length_n; int keep_alive_n; } ;
struct TYPE_21__ {int headers; } ;
struct TYPE_26__ {scalar_t__ subrequests; int content_length_n; int subrequest_in_memory; int waited; int internal; int expect_tested; TYPE_4__* main; int start_msec; int start_sec; scalar_t__ uri_changes; int main_filter_need_in_memory; int discard_body; int log_handler; int variables; int write_event_handler; int read_event_handler; int * post_subrequest; struct TYPE_26__* parent; int http_protocol; int method_name; int unparsed_uri; int raw_uri; void* args; void* uri; int request_line; int http_version; int method; int stream; int spdy_stream; int request_body; TYPE_3__ headers_in; int pool; int loc_conf; int srv_conf; int main_conf; TYPE_1__ headers_out; int * ctx; TYPE_8__* connection; int signature; } ;
typedef TYPE_6__ ngx_http_request_t ;
typedef int ngx_http_post_subrequest_t ;
struct TYPE_27__ {TYPE_2__* ctx; } ;
typedef TYPE_7__ ngx_http_core_srv_conf_t ;
struct TYPE_28__ {int log; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_24__ {int subrequests; int count; } ;
struct TYPE_22__ {int loc_conf; int srv_conf; int main_conf; } ;


 int NGX_ERROR ;
 int NGX_HTTP_GET ;
 scalar_t__ NGX_HTTP_MAX_URI_CHANGES ;
 int NGX_HTTP_MODULE ;
 int NGX_HTTP_SUBREQUEST_IN_MEMORY ;
 int NGX_HTTP_SUBREQUEST_WAITED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_http_clear_accept_ranges (TYPE_6__*) ;
 int ngx_http_clear_content_length (TYPE_6__*) ;
 int ngx_http_clear_last_modified (TYPE_6__*) ;
 int ngx_http_core_get_method ;
 int ngx_http_core_module ;
 TYPE_7__* ngx_http_get_module_srv_conf (TYPE_6__*,int ) ;
 int ngx_http_handler ;
 int ngx_http_max_module ;
 int ngx_http_post_request (TYPE_6__*,int *) ;
 int ngx_http_probe_subrequest_cycle (TYPE_6__*,void**,void**) ;
 int ngx_http_probe_subrequest_start (TYPE_6__*) ;
 int ngx_http_request_empty_handler ;
 int ngx_http_set_exten (TYPE_6__*) ;
 scalar_t__ ngx_list_init (int *,int ,int,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,void**,void**) ;
 int ngx_log_error (int ,int ,int ,char*,void**) ;
 void* ngx_pcalloc (int ,int) ;
 TYPE_5__* ngx_timeofday () ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_subrequest(ngx_http_request_t *r,
    ngx_str_t *uri, ngx_str_t *args, ngx_http_request_t **psr,
    ngx_http_post_subrequest_t *ps, ngx_uint_t flags)
{
    ngx_time_t *tp;
    ngx_connection_t *c;
    ngx_http_request_t *sr;
    ngx_http_core_srv_conf_t *cscf;
    r->main->subrequests--;

    if (r->main->subrequests == 0) {




        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "lua subrequests cycle while processing \"%V\"", uri);
        r->main->subrequests = 1;
        return NGX_ERROR;
    }



    sr = ngx_pcalloc(r->pool, sizeof(ngx_http_request_t));
    if (sr == ((void*)0)) {
        return NGX_ERROR;
    }

    sr->signature = NGX_HTTP_MODULE;

    c = r->connection;
    sr->connection = c;

    sr->ctx = ngx_pcalloc(r->pool, sizeof(void *) * ngx_http_max_module);
    if (sr->ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ngx_list_init(&sr->headers_out.headers, r->pool, 20,
                      sizeof(ngx_table_elt_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    cscf = ngx_http_get_module_srv_conf(r, ngx_http_core_module);
    sr->main_conf = cscf->ctx->main_conf;
    sr->srv_conf = cscf->ctx->srv_conf;
    sr->loc_conf = cscf->ctx->loc_conf;

    sr->pool = r->pool;

    sr->headers_in.content_length_n = -1;
    sr->headers_in.keep_alive_n = -1;

    ngx_http_clear_content_length(sr);
    ngx_http_clear_accept_ranges(sr);
    ngx_http_clear_last_modified(sr);

    sr->request_body = r->request_body;
    sr->method = NGX_HTTP_GET;
    sr->http_version = r->http_version;

    sr->request_line = r->request_line;
    sr->uri = *uri;

    if (args) {
        sr->args = *args;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "lua http subrequest \"%V?%V\"", uri, &sr->args);

    sr->subrequest_in_memory = (flags & NGX_HTTP_SUBREQUEST_IN_MEMORY) != 0;
    sr->waited = (flags & NGX_HTTP_SUBREQUEST_WAITED) != 0;





    sr->unparsed_uri = r->unparsed_uri;
    sr->method_name = ngx_http_core_get_method;
    sr->http_protocol = r->http_protocol;

    ngx_http_set_exten(sr);

    sr->main = r->main;
    sr->parent = r;
    sr->post_subrequest = ps;
    sr->read_event_handler = ngx_http_request_empty_handler;
    sr->write_event_handler = ngx_http_handler;

    sr->variables = r->variables;

    sr->log_handler = r->log_handler;

    sr->internal = 1;

    sr->discard_body = r->discard_body;
    sr->expect_tested = 1;
    sr->main_filter_need_in_memory = r->main_filter_need_in_memory;

    sr->uri_changes = NGX_HTTP_MAX_URI_CHANGES + 1;





    tp = ngx_timeofday();
    sr->start_sec = tp->sec;
    sr->start_msec = tp->msec;

    r->main->count++;

    *psr = sr;





    return ngx_http_post_request(sr, ((void*)0));
}
