
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_9__ {int len; scalar_t__ data; } ;
struct TYPE_11__ {TYPE_2__ send; } ;
typedef TYPE_4__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_12__ {TYPE_4__* conf; TYPE_6__* check_data; } ;
typedef TYPE_5__ ngx_http_upstream_check_peer_t ;
struct TYPE_10__ {int * last; int end; int * pos; int start; } ;
struct TYPE_8__ {int * start; int * last; int * end; int * pos; } ;
struct TYPE_13__ {TYPE_3__ recv; TYPE_1__ send; } ;
typedef TYPE_6__ ngx_http_upstream_check_ctx_t ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_mysql_init(ngx_http_upstream_check_peer_t *peer)
{
    ngx_http_upstream_check_ctx_t *ctx;
    ngx_http_upstream_check_srv_conf_t *ucscf;

    ctx = peer->check_data;
    ucscf = peer->conf;

    ctx->send.start = ctx->send.pos = (u_char *)ucscf->send.data;
    ctx->send.end = ctx->send.last = ctx->send.start + ucscf->send.len;

    ctx->recv.start = ctx->recv.pos = ((void*)0);
    ctx->recv.end = ctx->recv.last = ((void*)0);

    return NGX_OK;
}
