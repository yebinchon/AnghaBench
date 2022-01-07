
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int log; } ;
typedef TYPE_2__ ngx_peer_connection_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {scalar_t__ (* original_get_peer ) (TYPE_2__*,int ) ;TYPE_1__* conf; int data; } ;
typedef TYPE_3__ ngx_http_upstream_keepalive_peer_data_t ;
struct TYPE_9__ {int free; int cache; scalar_t__ index; } ;


 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_upstream_do_get_keepalive_peer (TYPE_2__*,int *,int *,int ) ;
 int ngx_http_upstream_keepalive_cache_t ;
 scalar_t__ ngx_http_upstream_keepalive_get_peer_in_slice (TYPE_2__*,TYPE_3__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int offsetof (int ,int ) ;
 int queue ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_get_keepalive_peer(ngx_peer_connection_t *pc, void *data)
{
    ngx_http_upstream_keepalive_peer_data_t *kp = data;

    ngx_int_t rc;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "get keepalive peer");



    rc = kp->original_get_peer(pc, kp->data);

    if (rc != NGX_OK) {
        return rc;
    }



    if (kp->conf->index) {
        return ngx_http_upstream_keepalive_get_peer_in_slice(pc, kp);
    }

    return ngx_http_upstream_do_get_keepalive_peer(
                        pc,
                        &kp->conf->cache,
                        &kp->conf->free,
                        offsetof(ngx_http_upstream_keepalive_cache_t, queue));
}
