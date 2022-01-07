
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_15__ {int post_action; scalar_t__ uri_changes; int header_only; int read_event_handler; int http_version; TYPE_2__* main; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {char* data; } ;
struct TYPE_16__ {TYPE_5__ post_action; } ;
typedef TYPE_4__ ngx_http_core_loc_conf_t ;
struct TYPE_14__ {int count; } ;
struct TYPE_13__ {int log; } ;


 int NGX_DECLINED ;
 int NGX_HTTP_VERSION_9 ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_http_block_reading ;
 int ngx_http_core_module ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 int ngx_http_internal_redirect (TYPE_3__*,TYPE_5__*,int *) ;
 int ngx_http_named_location (TYPE_3__*,TYPE_5__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_5__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_post_action(ngx_http_request_t *r)
{
    ngx_http_core_loc_conf_t *clcf;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    if (clcf->post_action.data == ((void*)0)) {
        return NGX_DECLINED;
    }

    if (r->post_action && r->uri_changes == 0) {
        return NGX_DECLINED;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "post action: \"%V\"", &clcf->post_action);

    r->main->count--;

    r->http_version = NGX_HTTP_VERSION_9;
    r->header_only = 1;
    r->post_action = 1;

    r->read_event_handler = ngx_http_block_reading;

    if (clcf->post_action.data[0] == '/') {
        ngx_http_internal_redirect(r, &clcf->post_action, ((void*)0));

    } else {
        ngx_http_named_location(r, &clcf->post_action);
    }

    return NGX_OK;
}
