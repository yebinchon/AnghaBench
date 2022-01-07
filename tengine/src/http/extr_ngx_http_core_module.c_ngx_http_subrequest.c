
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct timeval {int tv_usec; int tv_sec; } ;
typedef int ngx_uint_t ;
struct TYPE_30__ {int msec; int usec; int sec; } ;
typedef TYPE_5__ ngx_time_t ;
typedef int ngx_table_elt_t ;
typedef void* ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_28__ {int trailers; int headers; } ;
struct TYPE_31__ {scalar_t__ subrequests; int subrequest_in_memory; int waited; int background; int filter_need_in_memory; int internal; int expect_tested; int start_msec; int start_usec; int realloc_captures; int captures_data; int captures; int ncaptures; int write_event_handler; int phase_handler; int content_handler; int valid_unparsed_uri; int valid_location; int loc_conf; int method_name; int method; TYPE_2__* main; int start_sec; scalar_t__ uri_changes; int main_filter_need_in_memory; int discard_body; TYPE_7__* postponed; int pool; int log_handler; int variables; int read_event_handler; int * post_subrequest; struct TYPE_31__* parent; int schema; int http_protocol; int unparsed_uri; int raw_uri; void* args; void* uri; int request_line; int http_version; int stream; int request_body; int headers_in; int srv_conf; int main_conf; TYPE_3__ headers_out; int * ctx; TYPE_10__* connection; int signature; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_32__ {struct TYPE_32__* next; int * out; TYPE_6__* request; } ;
typedef TYPE_7__ ngx_http_postponed_request_t ;
typedef int ngx_http_post_subrequest_t ;
struct TYPE_33__ {TYPE_4__* ctx; } ;
typedef TYPE_8__ ngx_http_core_srv_conf_t ;
struct TYPE_34__ {scalar_t__ request_time_cache; } ;
typedef TYPE_9__ ngx_http_core_loc_conf_t ;
struct TYPE_25__ {TYPE_6__* data; int log; } ;
typedef TYPE_10__ ngx_connection_t ;
struct TYPE_29__ {int loc_conf; int srv_conf; int main_conf; } ;
struct TYPE_27__ {int count; } ;
struct TYPE_26__ {int usec; } ;


 int NGX_ERROR ;
 int NGX_HTTP_GET ;
 scalar_t__ NGX_HTTP_MAX_URI_CHANGES ;
 int NGX_HTTP_MODULE ;
 int NGX_HTTP_SUBREQUEST_BACKGROUND ;
 int NGX_HTTP_SUBREQUEST_CLONE ;
 int NGX_HTTP_SUBREQUEST_IN_MEMORY ;
 int NGX_HTTP_SUBREQUEST_WAITED ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_gettimeofday (struct timeval*) ;
 int ngx_http_clear_accept_ranges (TYPE_6__*) ;
 int ngx_http_clear_content_length (TYPE_6__*) ;
 int ngx_http_clear_last_modified (TYPE_6__*) ;
 int ngx_http_core_get_method ;
 int ngx_http_core_module ;
 int ngx_http_core_run_phases ;
 TYPE_9__* ngx_http_get_module_loc_conf (TYPE_6__*,int ) ;
 TYPE_8__* ngx_http_get_module_srv_conf (TYPE_6__*,int ) ;
 int ngx_http_handler ;
 int ngx_http_max_module ;
 int ngx_http_post_request (TYPE_6__*,int *) ;
 int ngx_http_request_empty_handler ;
 int ngx_http_set_exten (TYPE_6__*) ;
 int ngx_http_update_location_config (TYPE_6__*) ;
 scalar_t__ ngx_list_init (int *,int ,int,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,void**,void**) ;
 int ngx_log_error (int ,int ,int ,char*,void**) ;
 TYPE_7__* ngx_palloc (int ,int) ;
 void* ngx_pcalloc (int ,int) ;
 TYPE_5__* ngx_timeofday () ;

ngx_int_t
ngx_http_subrequest(ngx_http_request_t *r,
    ngx_str_t *uri, ngx_str_t *args, ngx_http_request_t **psr,
    ngx_http_post_subrequest_t *ps, ngx_uint_t flags)
{
    ngx_time_t *tp;
    ngx_connection_t *c;
    ngx_http_request_t *sr;
    ngx_http_core_srv_conf_t *cscf;




    ngx_http_postponed_request_t *pr, *p;

    if (r->subrequests == 0) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "subrequests cycle while processing \"%V\"", uri);
        return NGX_ERROR;
    }




    if (r->main->count >= 65535 - 1000) {
        ngx_log_error(NGX_LOG_CRIT, r->connection->log, 0,
                      "request reference counter overflow "
                      "while processing \"%V\"", uri);
        return NGX_ERROR;
    }

    if (r->subrequest_in_memory) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "nested in-memory subrequest \"%V\"", uri);
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

    if (ngx_list_init(&sr->headers_out.trailers, r->pool, 4,
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

    sr->headers_in = r->headers_in;

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
                   "http subrequest \"%V?%V\"", uri, &sr->args);

    sr->subrequest_in_memory = (flags & NGX_HTTP_SUBREQUEST_IN_MEMORY) != 0;
    sr->waited = (flags & NGX_HTTP_SUBREQUEST_WAITED) != 0;
    sr->background = (flags & NGX_HTTP_SUBREQUEST_BACKGROUND) != 0;




    sr->unparsed_uri = r->unparsed_uri;
    sr->method_name = ngx_http_core_get_method;
    sr->http_protocol = r->http_protocol;
    sr->schema = r->schema;

    ngx_http_set_exten(sr);

    sr->main = r->main;
    sr->parent = r;
    sr->post_subrequest = ps;
    sr->read_event_handler = ngx_http_request_empty_handler;
    sr->write_event_handler = ngx_http_handler;

    sr->variables = r->variables;

    sr->log_handler = r->log_handler;

    if (sr->subrequest_in_memory) {
        sr->filter_need_in_memory = 1;
    }

    if (!sr->background) {
        if (c->data == r && r->postponed == ((void*)0)) {
            c->data = sr;
        }

        pr = ngx_palloc(r->pool, sizeof(ngx_http_postponed_request_t));
        if (pr == ((void*)0)) {
            return NGX_ERROR;
        }

        pr->request = sr;
        pr->out = ((void*)0);
        pr->next = ((void*)0);

        if (r->postponed) {
            for (p = r->postponed; p->next; p = p->next) { }
            p->next = pr;

        } else {
            r->postponed = pr;
        }
    }

    sr->internal = 1;

    sr->discard_body = r->discard_body;
    sr->expect_tested = 1;
    sr->main_filter_need_in_memory = r->main_filter_need_in_memory;

    sr->uri_changes = NGX_HTTP_MAX_URI_CHANGES + 1;
    sr->subrequests = r->subrequests - 1;
    tp = ngx_timeofday();
    sr->start_sec = tp->sec;
    sr->start_msec = tp->msec;





    r->main->count++;

    *psr = sr;

    if (flags & NGX_HTTP_SUBREQUEST_CLONE) {
        sr->method = r->method;
        sr->method_name = r->method_name;
        sr->loc_conf = r->loc_conf;
        sr->valid_location = r->valid_location;
        sr->valid_unparsed_uri = r->valid_unparsed_uri;
        sr->content_handler = r->content_handler;
        sr->phase_handler = r->phase_handler;
        sr->write_event_handler = ngx_http_core_run_phases;
        ngx_http_update_location_config(sr);
    }

    return ngx_http_post_request(sr, ((void*)0));
}
