
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ handler; int * data; struct TYPE_11__* next; } ;
typedef TYPE_1__ ngx_pool_cleanup_t ;
struct TYPE_12__ {TYPE_4__* connection; } ;
typedef TYPE_2__ ngx_peer_connection_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_13__ {int * connection; } ;
typedef TYPE_3__ ngx_http_dubbo_ctx_t ;
typedef int ngx_dubbo_connection_t ;
struct TYPE_14__ {int log; TYPE_6__* pool; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_15__ {TYPE_1__* cleanup; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_dubbo_init_connection (int *,TYPE_4__*,int ) ;
 scalar_t__ ngx_http_dubbo_cleanup ;
 int ngx_http_dubbo_ping_handler ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_4__*,int *) ;
 TYPE_1__* ngx_pool_cleanup_add (TYPE_6__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_dubbo_get_connection_data(ngx_http_request_t *r,
        ngx_http_dubbo_ctx_t *ctx, ngx_peer_connection_t *pc)
{
    ngx_connection_t *c;
    ngx_pool_cleanup_t *cln;

    c = pc->connection;

    for (cln = c->pool->cleanup; cln; cln = cln->next) {
        if (cln->handler == ngx_http_dubbo_cleanup) {
            ctx->connection = cln->data;
            break;
        }
    }

    if (ctx->connection == ((void*)0)) {
        cln = ngx_pool_cleanup_add(c->pool, sizeof(ngx_dubbo_connection_t));
        if (cln == ((void*)0)) {
            return NGX_ERROR;
        }

        cln->handler = ngx_http_dubbo_cleanup;
        ctx->connection = cln->data;

        if(NGX_OK != ngx_dubbo_init_connection(ctx->connection, c, ngx_http_dubbo_ping_handler)) {
            return NGX_ERROR;
        }

        ngx_log_error(NGX_LOG_INFO, c->log, 0,
                      "dubbo: pc %p create dubbo connection %p", c, ctx->connection);
    }

    return NGX_OK;
}
