
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_12__ {int * data; int handler; } ;
typedef TYPE_3__ ngx_pool_cleanup_t ;
struct TYPE_13__ {TYPE_1__* connection; scalar_t__ cached; } ;
typedef TYPE_4__ ngx_peer_connection_t ;
struct TYPE_14__ {int data; int (* free ) (TYPE_4__*,int ,int ) ;TYPE_2__* scf; } ;
typedef TYPE_5__ ngx_http_dyups_ctx_t ;
struct TYPE_15__ {int log; } ;
struct TYPE_11__ {int ref; } ;
struct TYPE_10__ {int pool; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 TYPE_9__* ngx_cycle ;
 int ngx_http_dyups_clean_request ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 TYPE_3__* ngx_pool_cleanup_add (int ,int ) ;
 int stub1 (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void
ngx_http_dyups_free_peer(ngx_peer_connection_t *pc, void *data,
    ngx_uint_t state)
{
    ngx_http_dyups_ctx_t *ctx = data;

    ngx_pool_cleanup_t *cln;


    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "[dyups] dynamic upstream free handler count %i",
                   ctx->scf->ref);


    if (pc->connection == ((void*)0)) {
        goto done;
    }

    if (pc->cached) {
        goto done;
    }

    ctx->scf->ref++;

    cln = ngx_pool_cleanup_add(pc->connection->pool, 0);
    if (cln == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                      "[dyups] dynamic upstream free peer may cause memleak %i",
                      ctx->scf->ref);
        goto done;
    }

    cln->handler = ngx_http_dyups_clean_request;
    cln->data = &ctx->scf->ref;

 done:

    ctx->free(pc, ctx->data, state);
}
