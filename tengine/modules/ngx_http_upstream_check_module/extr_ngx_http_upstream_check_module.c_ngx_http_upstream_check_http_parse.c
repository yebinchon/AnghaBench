
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_18__ {int status_alive; } ;
struct TYPE_19__ {TYPE_4__ code; } ;
typedef TYPE_5__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_17__ {TYPE_2__* connection; } ;
struct TYPE_20__ {TYPE_3__ pc; TYPE_1__* check_peer_addr; TYPE_7__* check_data; TYPE_5__* conf; } ;
typedef TYPE_6__ ngx_http_upstream_check_peer_t ;
struct TYPE_13__ {int code; } ;
struct TYPE_22__ {scalar_t__ last; scalar_t__ pos; } ;
struct TYPE_21__ {TYPE_10__ status; TYPE_9__ recv; } ;
typedef TYPE_7__ ngx_http_upstream_check_ctx_t ;
struct TYPE_16__ {int error; } ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 int NGX_CHECK_HTTP_1XX ;
 int NGX_CHECK_HTTP_2XX ;
 int NGX_CHECK_HTTP_3XX ;
 int NGX_CHECK_HTTP_4XX ;
 int NGX_CHECK_HTTP_5XX ;
 int NGX_CHECK_HTTP_ERR ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_12__* ngx_cycle ;
 scalar_t__ ngx_http_upstream_check_parse_status_line (TYPE_7__*,TYPE_9__*,TYPE_10__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_http_parse(ngx_http_upstream_check_peer_t *peer)
{
    ngx_int_t rc;
    ngx_uint_t code, code_n;
    ngx_http_upstream_check_ctx_t *ctx;
    ngx_http_upstream_check_srv_conf_t *ucscf;

    ucscf = peer->conf;
    ctx = peer->check_data;

    if ((ctx->recv.last - ctx->recv.pos) > 0) {

        rc = ngx_http_upstream_check_parse_status_line(ctx,
                                                       &ctx->recv,
                                                       &ctx->status);
        if (rc == NGX_AGAIN) {
            return rc;
        }

        if (rc == NGX_ERROR) {
            ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                          "http parse status line error with peer: %V ",
                          &peer->check_peer_addr->name);
            return rc;
        }

        code = ctx->status.code;

        if (code > 0 && code < 200) {
            code_n = NGX_CHECK_HTTP_1XX;
        } else if (code >= 200 && code < 300) {
            code_n = NGX_CHECK_HTTP_2XX;
        } else if (code >= 300 && code < 400) {
            code_n = NGX_CHECK_HTTP_3XX;
        } else if (code >= 400 && code < 500) {
            peer->pc.connection->error = 1;
            code_n = NGX_CHECK_HTTP_4XX;
        } else if (code >= 500 && code < 600) {
            peer->pc.connection->error = 1;
            code_n = NGX_CHECK_HTTP_5XX;
        } else {
            peer->pc.connection->error = 1;
            code_n = NGX_CHECK_HTTP_ERR;
        }

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "http_parse: code_n: %ui, conf: %ui",
                       code_n, ucscf->code.status_alive);

        if (code_n & ucscf->code.status_alive) {
            return NGX_OK;
        } else {
            return NGX_ERROR;
        }
    } else {
        return NGX_AGAIN;
    }

    return NGX_OK;
}
