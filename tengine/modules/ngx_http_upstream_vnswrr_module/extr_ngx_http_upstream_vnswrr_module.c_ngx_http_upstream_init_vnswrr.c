
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {int * vpeers; struct TYPE_15__* next; int * last_peer; void* last_number; void* init_number; } ;
typedef TYPE_2__ ngx_http_upstream_vnswrr_srv_conf_t ;
struct TYPE_14__ {scalar_t__ data; int init; } ;
struct TYPE_16__ {TYPE_1__ peer; } ;
typedef TYPE_3__ ngx_http_upstream_srv_conf_t ;
typedef int ngx_http_upstream_rr_vpeers_t ;
struct TYPE_17__ {int total_weight; int number; scalar_t__ weighted; struct TYPE_17__* next; } ;
typedef TYPE_4__ ngx_http_upstream_rr_peers_t ;
struct TYPE_18__ {int pool; int log; } ;
typedef TYPE_5__ ngx_conf_t ;


 void* NGX_CONF_UNSET_UINT ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_2__* ngx_http_conf_upstream_srv_conf (TYPE_3__*,int ) ;
 scalar_t__ ngx_http_upstream_init_round_robin (TYPE_5__*,TYPE_3__*) ;
 int ngx_http_upstream_init_virtual_peers (TYPE_4__*,TYPE_2__*,int ,int ) ;
 int ngx_http_upstream_init_vnswrr_peer ;
 int ngx_http_upstream_vnswrr_module ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_init_vnswrr(ngx_conf_t *cf,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_http_upstream_rr_peers_t *peers, *backup;
    ngx_http_upstream_vnswrr_srv_conf_t *uvnscf, *ubvnscf;


    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, cf->log, 0, "init vnswrr");

    if (ngx_http_upstream_init_round_robin(cf, us) != NGX_OK) {
        return NGX_ERROR;
    }

    uvnscf = ngx_http_conf_upstream_srv_conf(us,
                                ngx_http_upstream_vnswrr_module);
    if (uvnscf == ((void*)0)) {
        return NGX_ERROR;
    }

    uvnscf->init_number = NGX_CONF_UNSET_UINT;
    uvnscf->last_number = NGX_CONF_UNSET_UINT;
    uvnscf->last_peer = ((void*)0);
    uvnscf->next = ((void*)0);

    us->peer.init = ngx_http_upstream_init_vnswrr_peer;

    peers = (ngx_http_upstream_rr_peers_t *) us->peer.data;
    if (peers->weighted) {
        uvnscf->vpeers = ngx_pcalloc(cf->pool,
                                    sizeof(ngx_http_upstream_rr_vpeers_t)
                                    * peers->total_weight);
        if (uvnscf->vpeers == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_http_upstream_init_virtual_peers(peers, uvnscf, 0, peers->number);

    }


    backup = peers->next;
    if (backup) {
        ubvnscf = ngx_pcalloc(cf->pool,
                              sizeof(ngx_http_upstream_vnswrr_srv_conf_t));
        if (ubvnscf == ((void*)0)) {
            return NGX_ERROR;
        }

        ubvnscf->init_number = NGX_CONF_UNSET_UINT;
        ubvnscf->last_number = NGX_CONF_UNSET_UINT;
        ubvnscf->last_peer = ((void*)0);

        uvnscf->next = ubvnscf;

        if (!backup->weighted) {
            return NGX_OK;
        }

        ubvnscf->vpeers = ngx_pcalloc(cf->pool,
                                      sizeof(ngx_http_upstream_rr_vpeers_t)
                                      * backup->total_weight);
        if (ubvnscf->vpeers == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_http_upstream_init_virtual_peers(backup, ubvnscf, 0, backup->number);
    }

    return NGX_OK;
}
