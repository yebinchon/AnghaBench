
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* check_data; } ;
typedef TYPE_3__ ngx_http_upstream_check_peer_t ;
struct TYPE_6__ {int start; int last; int pos; } ;
struct TYPE_7__ {int end; int last; int start; int pos; } ;
struct TYPE_9__ {int status; scalar_t__ state; TYPE_1__ recv; TYPE_2__ send; } ;
typedef TYPE_4__ ngx_http_upstream_check_ctx_t ;
typedef int ngx_http_status_t ;


 int ngx_memzero (int *,int) ;

__attribute__((used)) static void
ngx_http_upstream_check_http_reinit(ngx_http_upstream_check_peer_t *peer)
{
    ngx_http_upstream_check_ctx_t *ctx;

    ctx = peer->check_data;

    ctx->send.pos = ctx->send.start;
    ctx->send.last = ctx->send.end;

    ctx->recv.pos = ctx->recv.last = ctx->recv.start;

    ctx->state = 0;

    ngx_memzero(&ctx->status, sizeof(ngx_http_status_t));
}
