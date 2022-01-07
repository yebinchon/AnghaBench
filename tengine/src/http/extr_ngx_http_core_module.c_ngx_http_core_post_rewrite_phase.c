
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_13__ {scalar_t__ phase_handler; scalar_t__ uri_changes; int loc_conf; int uri; TYPE_1__* connection; int uri_changed; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_14__ {scalar_t__ next; } ;
typedef TYPE_4__ ngx_http_phase_handler_t ;
struct TYPE_15__ {TYPE_2__* ctx; } ;
typedef TYPE_5__ ngx_http_core_srv_conf_t ;
struct TYPE_12__ {int loc_conf; } ;
struct TYPE_11__ {int log; } ;


 int NGX_AGAIN ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_http_core_module ;
 int ngx_http_finalize_request (TYPE_3__*,int ) ;
 TYPE_5__* ngx_http_get_module_srv_conf (TYPE_3__*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;

ngx_int_t
ngx_http_core_post_rewrite_phase(ngx_http_request_t *r,
    ngx_http_phase_handler_t *ph)
{
    ngx_http_core_srv_conf_t *cscf;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "post rewrite phase: %ui", r->phase_handler);

    if (!r->uri_changed) {
        r->phase_handler++;
        return NGX_AGAIN;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "uri changes: %d", r->uri_changes);
    r->uri_changes--;

    if (r->uri_changes == 0) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "rewrite or internal redirection cycle "
                      "while processing \"%V\"", &r->uri);

        ngx_http_finalize_request(r, NGX_HTTP_INTERNAL_SERVER_ERROR);
        return NGX_OK;
    }

    r->phase_handler = ph->next;

    cscf = ngx_http_get_module_srv_conf(r, ngx_http_core_module);
    r->loc_conf = cscf->ctx->loc_conf;

    return NGX_AGAIN;
}
