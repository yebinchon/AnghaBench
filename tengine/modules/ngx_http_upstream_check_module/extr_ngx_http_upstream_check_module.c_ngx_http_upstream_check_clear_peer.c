
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ timer_set; TYPE_2__* data; } ;
struct TYPE_10__ {int * connection; } ;
struct TYPE_11__ {int delete; int * pool; TYPE_6__ check_timeout_ev; TYPE_6__ check_ev; TYPE_1__ pc; } ;
typedef TYPE_2__ ngx_http_upstream_check_peer_t ;
struct TYPE_13__ {int log; } ;


 int NGX_LOG_CRIT ;
 int ngx_close_connection (int *) ;
 TYPE_9__* ngx_cycle ;
 int ngx_del_timer (TYPE_6__*) ;
 int ngx_destroy_pool (int *) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_2__*,TYPE_2__*,TYPE_6__*) ;
 int ngx_memzero (TYPE_2__*,int) ;

__attribute__((used)) static void
ngx_http_upstream_check_clear_peer(ngx_http_upstream_check_peer_t *peer)
{
    if (peer != peer->check_ev.data) {
        ngx_log_error(NGX_LOG_CRIT, ngx_cycle->log, 0,
                      "different peer: %p, data: %p, timer: %p",
                      peer, peer->check_ev.data, &peer->check_ev);
    }

    if (peer->pc.connection) {
        ngx_close_connection(peer->pc.connection);
        peer->pc.connection = ((void*)0);
    }

    if (peer->check_ev.timer_set) {
        ngx_del_timer(&peer->check_ev);
    }

    if (peer->check_timeout_ev.timer_set) {
        ngx_del_timer(&peer->check_timeout_ev);
    }

    if (peer->pool != ((void*)0)) {
        ngx_destroy_pool(peer->pool);
        peer->pool = ((void*)0);
    }

    ngx_memzero(peer, sizeof(ngx_http_upstream_check_peer_t));

    peer->delete = 1;
}
