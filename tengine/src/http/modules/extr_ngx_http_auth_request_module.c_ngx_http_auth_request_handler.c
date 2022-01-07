
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_11__ ;


typedef int ngx_table_elt_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_27__ {int * www_authenticate; int headers; } ;
struct TYPE_29__ {int header_only; int * request_body; int pool; TYPE_4__* connection; TYPE_3__ headers_out; TYPE_2__* upstream; } ;
typedef TYPE_5__ ngx_http_request_t ;
typedef int ngx_http_request_body_t ;
struct TYPE_30__ {TYPE_7__* data; int handler; } ;
typedef TYPE_6__ ngx_http_post_subrequest_t ;
struct TYPE_31__ {scalar_t__ status; TYPE_5__* subrequest; int done; } ;
typedef TYPE_7__ ngx_http_auth_request_ctx_t ;
struct TYPE_24__ {scalar_t__ len; } ;
struct TYPE_32__ {TYPE_11__ uri; } ;
typedef TYPE_8__ ngx_http_auth_request_conf_t ;
struct TYPE_28__ {int log; } ;
struct TYPE_25__ {int * www_authenticate; } ;
struct TYPE_26__ {TYPE_1__ headers_in; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_FORBIDDEN ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 scalar_t__ NGX_HTTP_OK ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_HTTP_SUBREQUEST_WAITED ;
 scalar_t__ NGX_HTTP_UNAUTHORIZED ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_http_auth_request_done ;
 int ngx_http_auth_request_module ;
 scalar_t__ ngx_http_auth_request_set_variables (TYPE_5__*,TYPE_8__*,TYPE_7__*) ;
 TYPE_7__* ngx_http_get_module_ctx (TYPE_5__*,int ) ;
 TYPE_8__* ngx_http_get_module_loc_conf (TYPE_5__*,int ) ;
 int ngx_http_set_ctx (TYPE_5__*,TYPE_7__*,int ) ;
 scalar_t__ ngx_http_subrequest (TYPE_5__*,TYPE_11__*,int *,TYPE_5__**,TYPE_6__*,int ) ;
 int * ngx_list_push (int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__) ;
 TYPE_6__* ngx_palloc (int ,int) ;
 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_auth_request_handler(ngx_http_request_t *r)
{
    ngx_table_elt_t *h, *ho;
    ngx_http_request_t *sr;
    ngx_http_post_subrequest_t *ps;
    ngx_http_auth_request_ctx_t *ctx;
    ngx_http_auth_request_conf_t *arcf;

    arcf = ngx_http_get_module_loc_conf(r, ngx_http_auth_request_module);

    if (arcf->uri.len == 0) {
        return NGX_DECLINED;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "auth request handler");

    ctx = ngx_http_get_module_ctx(r, ngx_http_auth_request_module);

    if (ctx != ((void*)0)) {
        if (!ctx->done) {
            return NGX_AGAIN;
        }






        if (ngx_http_auth_request_set_variables(r, arcf, ctx) != NGX_OK) {
            return NGX_ERROR;
        }



        if (ctx->status == NGX_HTTP_FORBIDDEN) {
            return ctx->status;
        }

        if (ctx->status == NGX_HTTP_UNAUTHORIZED) {
            sr = ctx->subrequest;

            h = sr->headers_out.www_authenticate;

            if (!h && sr->upstream) {
                h = sr->upstream->headers_in.www_authenticate;
            }

            if (h) {
                ho = ngx_list_push(&r->headers_out.headers);
                if (ho == ((void*)0)) {
                    return NGX_ERROR;
                }

                *ho = *h;

                r->headers_out.www_authenticate = ho;
            }

            return ctx->status;
        }

        if (ctx->status >= NGX_HTTP_OK
            && ctx->status < NGX_HTTP_SPECIAL_RESPONSE)
        {
            return NGX_OK;
        }

        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "auth request unexpected status: %ui", ctx->status);

        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_auth_request_ctx_t));
    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ps = ngx_palloc(r->pool, sizeof(ngx_http_post_subrequest_t));
    if (ps == ((void*)0)) {
        return NGX_ERROR;
    }

    ps->handler = ngx_http_auth_request_done;
    ps->data = ctx;

    if (ngx_http_subrequest(r, &arcf->uri, ((void*)0), &sr, ps,
                            NGX_HTTP_SUBREQUEST_WAITED)
        != NGX_OK)
    {
        return NGX_ERROR;
    }






    sr->request_body = ngx_pcalloc(r->pool, sizeof(ngx_http_request_body_t));
    if (sr->request_body == ((void*)0)) {
        return NGX_ERROR;
    }

    sr->header_only = 1;

    ctx->subrequest = sr;

    ngx_http_set_ctx(r, ctx, ngx_http_auth_request_module);

    return NGX_AGAIN;
}
