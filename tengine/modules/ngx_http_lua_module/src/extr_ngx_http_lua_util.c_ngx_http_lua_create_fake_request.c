
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int ngx_table_elt_t ;
typedef int ngx_http_variable_value_t ;
struct TYPE_17__ {int keep_alive_n; scalar_t__ content_length_n; int headers; } ;
struct TYPE_15__ {int headers; } ;
struct TYPE_18__ {int count; int discard_body; int http_state; scalar_t__ subrequests; scalar_t__ uri_changes; TYPE_4__ headers_in; int method; struct TYPE_18__* main; int signature; TYPE_11__* http_connection; TYPE_6__* connection; int * variables; int pool; int * ctx; TYPE_2__ headers_out; int header_end; TYPE_1__* header_in; } ;
typedef TYPE_5__ ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
typedef int ngx_http_connection_t ;
typedef int ngx_http_cleanup_t ;
struct TYPE_19__ {TYPE_5__* data; TYPE_1__* buffer; int pool; int requests; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_16__ {int nelts; } ;
struct TYPE_20__ {TYPE_3__ variables; } ;
struct TYPE_14__ {int start; } ;
struct TYPE_13__ {TYPE_5__* request; } ;


 scalar_t__ NGX_HTTP_MAX_SUBREQUESTS ;
 scalar_t__ NGX_HTTP_MAX_URI_CHANGES ;
 int NGX_HTTP_MODULE ;
 int NGX_HTTP_PROCESS_REQUEST_STATE ;
 int NGX_HTTP_UNKNOWN ;
 scalar_t__ NGX_OK ;
 TYPE_9__* cmcf ;
 int dd (char*,...) ;
 TYPE_11__* hc ;
 int ngx_http_core_module ;
 TYPE_9__* ngx_http_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_http_max_module ;
 scalar_t__ ngx_list_init (int *,int ,int ,int) ;
 void* ngx_pcalloc (int ,int) ;

ngx_http_request_t *
ngx_http_lua_create_fake_request(ngx_connection_t *c)
{
    ngx_http_request_t *r;

    r = ngx_pcalloc(c->pool, sizeof(ngx_http_request_t));
    if (r == ((void*)0)) {
        return ((void*)0);
    }

    c->requests++;

    r->pool = c->pool;

    dd("r pool allocated: %d", (int) (sizeof(ngx_http_lua_ctx_t)
       + sizeof(void *) * ngx_http_max_module + sizeof(ngx_http_cleanup_t)));
    r->ctx = ngx_pcalloc(r->pool, sizeof(void *) * ngx_http_max_module);
    if (r->ctx == ((void*)0)) {
        return ((void*)0);
    }
    r->connection = c;

    r->headers_in.content_length_n = 0;
    c->data = r;




    r->signature = NGX_HTTP_MODULE;
    r->main = r;
    r->count = 1;

    r->method = NGX_HTTP_UNKNOWN;

    r->headers_in.keep_alive_n = -1;
    r->uri_changes = NGX_HTTP_MAX_URI_CHANGES + 1;
    r->subrequests = NGX_HTTP_MAX_SUBREQUESTS + 1;

    r->http_state = NGX_HTTP_PROCESS_REQUEST_STATE;
    r->discard_body = 1;

    dd("created fake request %p", r);

    return r;
}
