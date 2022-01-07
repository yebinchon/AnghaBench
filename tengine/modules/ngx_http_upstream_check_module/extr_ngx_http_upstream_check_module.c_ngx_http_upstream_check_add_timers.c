
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_msec_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int check_interval; int check_type_conf; } ;
typedef TYPE_2__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_10__ {size_t nelts; TYPE_5__* elts; } ;
struct TYPE_12__ {TYPE_1__ peers; int check_shm_name; TYPE_4__* peers_shm; } ;
typedef TYPE_3__ ngx_http_upstream_check_peers_t ;
struct TYPE_13__ {int * peers; } ;
typedef TYPE_4__ ngx_http_upstream_check_peers_shm_t ;
struct TYPE_14__ {int * shm; TYPE_2__* conf; } ;
typedef TYPE_5__ ngx_http_upstream_check_peer_t ;
typedef int ngx_http_upstream_check_peer_shm_t ;
struct TYPE_15__ {int log; } ;
typedef TYPE_6__ ngx_cycle_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 TYPE_3__* check_peers_ctx ;
 int ngx_http_upstream_check_add_timer (TYPE_5__*,int ,int,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,size_t) ;
 int ngx_pid ;
 int ngx_random () ;
 int srandom (int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_check_add_timers(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_msec_t t, delay;
    ngx_http_upstream_check_peer_t *peer;
    ngx_http_upstream_check_peers_t *peers;
    ngx_http_upstream_check_srv_conf_t *ucscf;
    ngx_http_upstream_check_peer_shm_t *peer_shm;
    ngx_http_upstream_check_peers_shm_t *peers_shm;

    peers = check_peers_ctx;
    if (peers == ((void*)0)) {
        return NGX_OK;
    }

    peers_shm = peers->peers_shm;
    if (peers_shm == ((void*)0)) {
        return NGX_OK;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, cycle->log, 0,
                   "http check upstream init_process, shm_name: %V, "
                   "peer number: %ud",
                   &peers->check_shm_name,
                   peers->peers.nelts);

    srandom(ngx_pid);

    peer = peers->peers.elts;
    peer_shm = peers_shm->peers;

    for (i = 0; i < peers->peers.nelts; i++) {

        ucscf = peer[i].conf;





        delay = ucscf->check_interval > 1000 ? ucscf->check_interval : 1000;
        t = ngx_random() % delay;

        peer[i].shm = &peer_shm[i];

        ngx_http_upstream_check_add_timer(&peer[i], ucscf->check_type_conf, t, cycle->log);

    }

    return NGX_OK;
}
