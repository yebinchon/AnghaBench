
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_26__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_29__ {int host; int * srv_conf; } ;
typedef TYPE_2__ ngx_http_upstream_srv_conf_t ;
struct TYPE_30__ {scalar_t__ check_interval; scalar_t__ port; scalar_t__ unique; } ;
typedef TYPE_3__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_28__ {scalar_t__ nelts; } ;
struct TYPE_31__ {int checksum; TYPE_26__ peers; } ;
typedef TYPE_4__ ngx_http_upstream_check_peers_t ;
struct TYPE_32__ {scalar_t__ index; TYPE_8__* peer_addr; TYPE_8__* check_peer_addr; int * upstream_name; TYPE_3__* conf; } ;
typedef TYPE_5__ ngx_http_upstream_check_peer_t ;
struct TYPE_33__ {TYPE_4__* peers; } ;
typedef TYPE_6__ ngx_http_upstream_check_main_conf_t ;
struct TYPE_34__ {int pool; int log; } ;
typedef TYPE_7__ ngx_conf_t ;
struct TYPE_27__ {int len; int data; } ;
struct TYPE_35__ {TYPE_1__ name; } ;
typedef TYPE_8__ ngx_addr_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_PROCESS_WORKER ;
 TYPE_5__* ngx_array_push (TYPE_26__*) ;
 TYPE_6__* ngx_http_conf_get_module_main_conf (TYPE_7__*,int ) ;
 TYPE_3__* ngx_http_conf_upstream_srv_conf (TYPE_2__*,int ) ;
 scalar_t__ ngx_http_upstream_check_add_dynamic_peer (int ,TYPE_2__*,TYPE_8__*) ;
 scalar_t__ ngx_http_upstream_check_addr_change_port (int ,TYPE_8__*,TYPE_8__*,scalar_t__) ;
 int ngx_http_upstream_check_module ;
 scalar_t__ ngx_http_upstream_check_unique_peer (TYPE_4__*,TYPE_8__*,TYPE_3__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_memzero (TYPE_5__*,int) ;
 scalar_t__ ngx_murmur_hash2 (int ,int ) ;
 TYPE_8__* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_process ;

ngx_uint_t
ngx_http_upstream_check_add_peer(ngx_conf_t *cf,
    ngx_http_upstream_srv_conf_t *us, ngx_addr_t *peer_addr)
{
    ngx_uint_t index;
    ngx_http_upstream_check_peer_t *peer;
    ngx_http_upstream_check_peers_t *peers;
    ngx_http_upstream_check_srv_conf_t *ucscf;
    ngx_http_upstream_check_main_conf_t *ucmcf;

    if (us->srv_conf == ((void*)0)) {
        return NGX_ERROR;
    }

    ucscf = ngx_http_conf_upstream_srv_conf(us, ngx_http_upstream_check_module);

    if(ucscf->check_interval == 0) {
        return NGX_ERROR;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, cf->log, 0,
                   "http upstream check add upstream process: %ui",
                   ngx_process);

    if (ngx_process == NGX_PROCESS_WORKER) {
        return ngx_http_upstream_check_add_dynamic_peer(cf->pool, us, peer_addr);
    }

    ucmcf = ngx_http_conf_get_module_main_conf(cf,
                                               ngx_http_upstream_check_module);
    peers = ucmcf->peers;

    if (ucscf->unique) {
        index = ngx_http_upstream_check_unique_peer(peers, peer_addr, ucscf);
        if (index != (ngx_uint_t) NGX_ERROR) {
            return index;
        }
    }

    peer = ngx_array_push(&peers->peers);
    if (peer == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memzero(peer, sizeof(ngx_http_upstream_check_peer_t));

    peer->index = peers->peers.nelts - 1;
    peer->conf = ucscf;
    peer->upstream_name = &us->host;
    peer->peer_addr = peer_addr;

    if (ucscf->port) {
        peer->check_peer_addr = ngx_pcalloc(cf->pool, sizeof(ngx_addr_t));
        if (peer->check_peer_addr == ((void*)0)) {
            return NGX_ERROR;
        }

        if (ngx_http_upstream_check_addr_change_port(cf->pool,
                peer->check_peer_addr, peer_addr, ucscf->port)
            != NGX_OK) {

            return NGX_ERROR;
        }

    } else {
        peer->check_peer_addr = peer->peer_addr;
    }

    peers->checksum +=
        ngx_murmur_hash2(peer_addr->name.data, peer_addr->name.len);

    return peer->index;
}
