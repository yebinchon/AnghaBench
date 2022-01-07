
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
typedef int ngx_int_t ;
struct TYPE_18__ {scalar_t__ state; int (* parse ) (TYPE_5__*) ;TYPE_4__* check_peer_addr; TYPE_3__* conf; TYPE_6__* check_data; } ;
typedef TYPE_5__ ngx_http_upstream_check_peer_t ;
struct TYPE_14__ {int * last; int * end; int * start; int * pos; } ;
struct TYPE_19__ {TYPE_1__ recv; } ;
typedef TYPE_6__ ngx_http_upstream_check_ctx_t ;
struct TYPE_20__ {int log; TYPE_8__* data; } ;
typedef TYPE_7__ ngx_event_t ;
typedef int ngx_err_t ;
struct TYPE_21__ {int (* recv ) (TYPE_8__*,int *,int) ;int error; int log; int pool; int read; TYPE_5__* data; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_17__ {int name; } ;
struct TYPE_16__ {TYPE_2__* check_type_conf; } ;
struct TYPE_15__ {int name; } ;




 scalar_t__ NGX_HTTP_CHECK_RECV_DONE ;
 scalar_t__ NGX_HTTP_CHECK_SEND_DONE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;

 scalar_t__ ngx_handle_read_event (int ,int ) ;
 int ngx_http_upstream_check_clean_event (TYPE_5__*) ;
 scalar_t__ ngx_http_upstream_check_need_exit () ;
 int ngx_http_upstream_check_status_update (TYPE_5__*,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int *) ;
 int ngx_log_error (int ,int ,int ,char*,int *,int *) ;
 int ngx_memcpy (int *,int *,int) ;
 int ngx_pagesize ;
 void* ngx_palloc (int ,int) ;
 int ngx_socket_errno ;
 int stub1 (TYPE_8__*,int *,int) ;
 int stub2 (TYPE_5__*) ;

__attribute__((used)) static void
ngx_http_upstream_check_recv_handler(ngx_event_t *event)
{
    u_char *new_buf;
    ssize_t size, n;
    ngx_int_t rc;
    ngx_connection_t *c;
    ngx_http_upstream_check_ctx_t *ctx;
    ngx_http_upstream_check_peer_t *peer;

    if (ngx_http_upstream_check_need_exit()) {
        return;
    }

    c = event->data;
    peer = c->data;

    if (peer->state != NGX_HTTP_CHECK_SEND_DONE) {

        if (ngx_handle_read_event(c->read, 0) != 128) {
            goto check_recv_fail;
        }

        return;
    }

    ctx = peer->check_data;

    if (ctx->recv.start == ((void*)0)) {

        ctx->recv.start = ngx_palloc(c->pool, ngx_pagesize / 2);
        if (ctx->recv.start == ((void*)0)) {
            goto check_recv_fail;
        }

        ctx->recv.last = ctx->recv.pos = ctx->recv.start;
        ctx->recv.end = ctx->recv.start + ngx_pagesize / 2;
    }

    while (1) {
        n = ctx->recv.end - ctx->recv.last;


        if (n == 0) {
            size = ctx->recv.end - ctx->recv.start;
            new_buf = ngx_palloc(c->pool, size * 2);
            if (new_buf == ((void*)0)) {
                goto check_recv_fail;
            }

            ngx_memcpy(new_buf, ctx->recv.start, size);

            ctx->recv.pos = ctx->recv.start = new_buf;
            ctx->recv.last = new_buf + size;
            ctx->recv.end = new_buf + size * 2;

            n = ctx->recv.end - ctx->recv.last;
        }

        size = c->recv(c, ctx->recv.last, n);
        if (size > 0) {
            ctx->recv.last += size;
            continue;
        } else if (size == 0 || size == 130) {
            break;
        } else {
            c->error = 1;
            goto check_recv_fail;
        }
    }

    rc = peer->parse(peer);

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http check parse rc: %i, peer: %V ",
                   rc, &peer->check_peer_addr->name);

    switch (rc) {

    case 130:

        return;

    case 129:
        ngx_log_error(NGX_LOG_ERR, event->log, 0,
                      "check protocol %V error with peer: %V ",
                      &peer->conf->check_type_conf->name,
                      &peer->check_peer_addr->name);

        ngx_http_upstream_check_status_update(peer, 0);
        break;

    case 128:


    default:
        ngx_http_upstream_check_status_update(peer, 1);
        break;
    }

    peer->state = NGX_HTTP_CHECK_RECV_DONE;
    ngx_http_upstream_check_clean_event(peer);
    return;

check_recv_fail:

    ngx_http_upstream_check_status_update(peer, 0);
    ngx_http_upstream_check_clean_event(peer);
}
