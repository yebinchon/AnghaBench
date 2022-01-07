
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef int ngx_http_upstream_check_peer_t ;
struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_6__ {scalar_t__ (* recv ) (TYPE_2__*,int *,int) ;int error; int read; int log; int * data; } ;
typedef TYPE_2__ ngx_connection_t ;


 scalar_t__ NGX_AGAIN ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_read_event (int ,int ) ;
 int ngx_http_upstream_check_clean_event (int *) ;
 scalar_t__ ngx_http_upstream_check_need_exit () ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 scalar_t__ stub1 (TYPE_2__*,int *,int) ;

__attribute__((used)) static void
ngx_http_upstream_check_discard_handler(ngx_event_t *event)
{
    u_char buf[4096];
    ssize_t size;
    ngx_connection_t *c;
    ngx_http_upstream_check_peer_t *peer;

    c = event->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "upstream check discard handler");

    if (ngx_http_upstream_check_need_exit()) {
        return;
    }

    peer = c->data;

    while (1) {
        size = c->recv(c, buf, 4096);

        if (size > 0) {
            continue;

        } else if (size == NGX_AGAIN) {
            break;

        } else {
            if (size == 0) {
                ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0,
                               "peer closed its half side of the connection");
            }

            goto check_discard_fail;
        }
    }

    if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
        goto check_discard_fail;
    }

    return;

 check_discard_fail:
    c->error = 1;
    ngx_http_upstream_check_clean_event(peer);
}
