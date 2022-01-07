
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* connection; } ;
struct TYPE_12__ {TYPE_3__* check_peer_addr; TYPE_2__ pc; } ;
typedef TYPE_4__ ngx_http_upstream_check_peer_t ;
struct TYPE_13__ {int log; TYPE_4__* data; } ;
typedef TYPE_5__ ngx_event_t ;
struct TYPE_11__ {int name; } ;
struct TYPE_9__ {int error; } ;


 int NGX_LOG_ERR ;
 int ngx_http_upstream_check_clean_event (TYPE_4__*) ;
 scalar_t__ ngx_http_upstream_check_need_exit () ;
 int ngx_http_upstream_check_status_update (TYPE_4__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;

__attribute__((used)) static void
ngx_http_upstream_check_timeout_handler(ngx_event_t *event)
{
    ngx_http_upstream_check_peer_t *peer;

    if (ngx_http_upstream_check_need_exit()) {
        return;
    }

    peer = event->data;
    peer->pc.connection->error = 1;

    ngx_log_error(NGX_LOG_ERR, event->log, 0,
                  "check time out with peer: %V ",
                  &peer->check_peer_addr->name);

    ngx_http_upstream_check_status_update(peer, 0);
    ngx_http_upstream_check_clean_event(peer);
}
