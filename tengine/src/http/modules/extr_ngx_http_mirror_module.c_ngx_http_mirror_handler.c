
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_17__ {int pool; TYPE_1__* connection; struct TYPE_17__* main; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_18__ {scalar_t__ request_body; int * mirror; } ;
typedef TYPE_3__ ngx_http_mirror_loc_conf_t ;
struct TYPE_19__ {scalar_t__ status; } ;
typedef TYPE_4__ ngx_http_mirror_ctx_t ;
struct TYPE_16__ {int log; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_finalize_request (TYPE_2__*,scalar_t__) ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 TYPE_3__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 int ngx_http_mirror_body_handler ;
 scalar_t__ ngx_http_mirror_handler_internal (TYPE_2__*) ;
 int ngx_http_mirror_module ;
 scalar_t__ ngx_http_read_client_request_body (TYPE_2__*,int ) ;
 int ngx_http_set_ctx (TYPE_2__*,TYPE_4__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_mirror_handler(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_mirror_ctx_t *ctx;
    ngx_http_mirror_loc_conf_t *mlcf;

    if (r != r->main) {
        return NGX_DECLINED;
    }

    mlcf = ngx_http_get_module_loc_conf(r, ngx_http_mirror_module);

    if (mlcf->mirror == ((void*)0)) {
        return NGX_DECLINED;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0, "mirror handler");

    if (mlcf->request_body) {
        ctx = ngx_http_get_module_ctx(r, ngx_http_mirror_module);

        if (ctx) {
            return ctx->status;
        }

        ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_mirror_ctx_t));
        if (ctx == ((void*)0)) {
            return NGX_ERROR;
        }

        ctx->status = NGX_DONE;

        ngx_http_set_ctx(r, ctx, ngx_http_mirror_module);

        rc = ngx_http_read_client_request_body(r, ngx_http_mirror_body_handler);
        if (rc >= NGX_HTTP_SPECIAL_RESPONSE) {
            return rc;
        }

        ngx_http_finalize_request(r, NGX_DONE);
        return NGX_DONE;
    }

    return ngx_http_mirror_handler_internal(r);
}
