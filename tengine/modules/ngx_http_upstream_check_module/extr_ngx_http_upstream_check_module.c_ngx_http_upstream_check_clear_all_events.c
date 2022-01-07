
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_7__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_8__ {TYPE_1__ peers; } ;
typedef TYPE_2__ ngx_http_upstream_check_peers_t ;
struct TYPE_9__ {scalar_t__ delete; } ;
typedef TYPE_3__ ngx_http_upstream_check_peer_t ;
typedef int ngx_flag_t ;
struct TYPE_10__ {int log; } ;


 int NGX_LOG_NOTICE ;
 TYPE_2__* check_peers_ctx ;
 TYPE_5__* ngx_cycle ;
 int ngx_http_upstream_check_clear_peer (TYPE_3__*) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 int ngx_pid ;

__attribute__((used)) static void
ngx_http_upstream_check_clear_all_events()
{
    ngx_uint_t i;
    ngx_http_upstream_check_peer_t *peer;
    ngx_http_upstream_check_peers_t *peers;

    static ngx_flag_t has_cleared = 0;

    if (has_cleared || check_peers_ctx == ((void*)0)) {
        return;
    }

    ngx_log_error(NGX_LOG_NOTICE, ngx_cycle->log, 0,
                  "clear all the events on %P ", ngx_pid);

    has_cleared = 1;

    peers = check_peers_ctx;

    peer = peers->peers.elts;
    for (i = 0; i < peers->peers.nelts; i++) {
        if (peer[i].delete) {
            continue;
        }

        ngx_http_upstream_check_clear_peer(&peer[i]);
    }
}
