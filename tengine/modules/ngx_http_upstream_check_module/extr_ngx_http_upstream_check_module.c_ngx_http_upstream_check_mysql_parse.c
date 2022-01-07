
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int packet_number; int others; int protocol_version; } ;
typedef TYPE_2__ ngx_mysql_handshake_init_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_4__* check_data; } ;
typedef TYPE_3__ ngx_http_upstream_check_peer_t ;
struct TYPE_7__ {size_t last; size_t pos; } ;
struct TYPE_10__ {TYPE_1__ recv; } ;
typedef TYPE_4__ ngx_http_upstream_check_ctx_t ;
struct TYPE_11__ {int log; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 TYPE_6__* ngx_cycle ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_mysql_parse(ngx_http_upstream_check_peer_t *peer)
{
    size_t size;
    ngx_mysql_handshake_init_t *handshake;
    ngx_http_upstream_check_ctx_t *ctx;

    ctx = peer->check_data;

    size = ctx->recv.last - ctx->recv.pos;
    if (size < sizeof(ngx_mysql_handshake_init_t)) {
        return NGX_AGAIN;
    }

    handshake = (ngx_mysql_handshake_init_t *) ctx->recv.pos;

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "mysql_parse: packet_number=%ud, protocol=%ud, server=%s",
                   handshake->packet_number, handshake->protocol_version,
                   handshake->others);


    if (handshake->packet_number != 0x00) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
