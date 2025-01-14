
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int minor; int major; } ;
struct TYPE_10__ {int minor; int major; } ;
struct TYPE_12__ {scalar_t__ msg_type; scalar_t__ handshake_type; TYPE_3__ hello_version; int length; TYPE_2__ version; } ;
typedef TYPE_4__ ngx_ssl_server_hello_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_6__* check_data; } ;
typedef TYPE_5__ ngx_http_upstream_check_peer_t ;
struct TYPE_9__ {size_t last; size_t pos; } ;
struct TYPE_14__ {TYPE_1__ recv; } ;
typedef TYPE_6__ ngx_http_upstream_check_ctx_t ;
struct TYPE_15__ {int log; } ;


 int NGX_AGAIN ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 scalar_t__ NGX_SSL_HANDSHAKE ;
 scalar_t__ NGX_SSL_SERVER_HELLO ;
 TYPE_8__* ngx_cycle ;
 int ngx_log_debug7 (int ,int ,int ,char*,scalar_t__,int ,int ,int ,scalar_t__,int ,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_ssl_hello_parse(ngx_http_upstream_check_peer_t *peer)
{
    size_t size;
    ngx_ssl_server_hello_t *resp;
    ngx_http_upstream_check_ctx_t *ctx;

    ctx = peer->check_data;

    size = ctx->recv.last - ctx->recv.pos;
    if (size < sizeof(ngx_ssl_server_hello_t)) {
        return NGX_AGAIN;
    }

    resp = (ngx_ssl_server_hello_t *) ctx->recv.pos;

    ngx_log_debug7(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "http check ssl_parse, type: %ud, version: %ud.%ud, "
                   "length: %ud, handshanke_type: %ud, hello_version: %ud.%ud",
                   resp->msg_type, resp->version.major, resp->version.minor,
                   ntohs(resp->length), resp->handshake_type,
                   resp->hello_version.major, resp->hello_version.minor);

    if (resp->msg_type != NGX_SSL_HANDSHAKE) {
        return NGX_ERROR;
    }

    if (resp->handshake_type != NGX_SSL_SERVER_HELLO) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
