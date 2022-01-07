
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_peer_connection_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int data; int (* get ) (int *,int ) ;TYPE_1__* scf; } ;
typedef TYPE_2__ ngx_http_dyups_ctx_t ;
struct TYPE_6__ {int log; } ;
struct TYPE_4__ {int ref; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_3__* ngx_cycle ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_dyups_get_peer(ngx_peer_connection_t *pc, void *data)
{
    ngx_http_dyups_ctx_t *ctx = data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "[dyups] dynamic upstream get handler count %i",
                   ctx->scf->ref);

    return ctx->get(pc, ctx->data);
}
