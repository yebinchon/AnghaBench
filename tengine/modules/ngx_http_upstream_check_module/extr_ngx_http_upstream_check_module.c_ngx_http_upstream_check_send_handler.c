
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_17__ {scalar_t__ state; scalar_t__ (* init ) (TYPE_3__*) ;TYPE_4__* check_data; TYPE_1__* check_peer_addr; int pool; } ;
typedef TYPE_3__ ngx_http_upstream_check_peer_t ;
struct TYPE_16__ {scalar_t__ last; scalar_t__ pos; } ;
struct TYPE_18__ {TYPE_2__ send; } ;
typedef TYPE_4__ ngx_http_upstream_check_ctx_t ;
struct TYPE_19__ {int log; TYPE_6__* data; } ;
typedef TYPE_5__ ngx_event_t ;
typedef int ngx_err_t ;
struct TYPE_20__ {scalar_t__ (* send ) (TYPE_6__*,scalar_t__,scalar_t__) ;int error; int requests; int log; int write; int * pool; TYPE_3__* data; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_HTTP_CHECK_CONNECT_DONE ;
 scalar_t__ NGX_HTTP_CHECK_SEND_DONE ;
 int NGX_LOG_DEBUG ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 TYPE_13__* ngx_cycle ;
 scalar_t__ ngx_handle_write_event (int ,int ) ;
 int ngx_http_upstream_check_clean_event (TYPE_3__*) ;
 scalar_t__ ngx_http_upstream_check_need_exit () ;
 int ngx_http_upstream_check_status_update (TYPE_3__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__,...) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;
 int ngx_socket_errno ;
 scalar_t__ stub1 (TYPE_3__*) ;
 scalar_t__ stub2 (TYPE_6__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ngx_http_upstream_check_send_handler(ngx_event_t *event)
{
    ssize_t size;
    ngx_connection_t *c;
    ngx_http_upstream_check_ctx_t *ctx;
    ngx_http_upstream_check_peer_t *peer;

    if (ngx_http_upstream_check_need_exit()) {
        return;
    }

    c = event->data;
    peer = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0, "http check send.");

    if (c->pool == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, event->log, 0,
                      "check pool NULL with peer: %V ",
                      &peer->check_peer_addr->name);

        goto check_send_fail;
    }

    if (peer->state != NGX_HTTP_CHECK_CONNECT_DONE) {
        if (ngx_handle_write_event(c->write, 0) != NGX_OK) {

            ngx_log_error(NGX_LOG_ERR, event->log, 0,
                          "check handle write event error with peer: %V ",
                          &peer->check_peer_addr->name);

            goto check_send_fail;
        }

        return;
    }

    if (peer->check_data == ((void*)0)) {

        peer->check_data = ngx_pcalloc(peer->pool,
                                       sizeof(ngx_http_upstream_check_ctx_t));
        if (peer->check_data == ((void*)0)) {
            goto check_send_fail;
        }

        if (peer->init == ((void*)0) || peer->init(peer) != NGX_OK) {

            ngx_log_error(NGX_LOG_ERR, event->log, 0,
                          "check init error with peer: %V ",
                          &peer->check_peer_addr->name);

            goto check_send_fail;
        }
    }

    ctx = peer->check_data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http check send total: %z",
                   ctx->send.last - ctx->send.pos);

    while (ctx->send.pos < ctx->send.last) {

        size = c->send(c, ctx->send.pos, ctx->send.last - ctx->send.pos);
        if (size >= 0) {
            ctx->send.pos += size;
        } else if (size == NGX_AGAIN) {
            return;
        } else {
            c->error = 1;
            goto check_send_fail;
        }
    }

    if (ctx->send.pos == ctx->send.last) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0, "http check send done.");
        peer->state = NGX_HTTP_CHECK_SEND_DONE;
        c->requests++;
    }

    return;

check_send_fail:
    ngx_http_upstream_check_status_update(peer, 0);
    ngx_http_upstream_check_clean_event(peer);
}
