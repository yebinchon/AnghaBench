
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {size_t vnumber; TYPE_2__* vpeers; } ;
typedef TYPE_1__ ngx_http_upstream_vnswrr_srv_conf_t ;
struct TYPE_9__ {scalar_t__ rindex; int * vpeer; } ;
typedef TYPE_2__ ngx_http_upstream_rr_vpeers_t ;
struct TYPE_10__ {int name; } ;
typedef TYPE_3__ ngx_http_upstream_rr_peers_t ;
typedef int ngx_http_upstream_rr_peer_t ;
struct TYPE_11__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 TYPE_7__* ngx_cycle ;
 scalar_t__ ngx_http_upstream_get_rr_peer (TYPE_3__*,int **) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;

__attribute__((used)) static void
ngx_http_upstream_init_virtual_peers(ngx_http_upstream_rr_peers_t *peers,
                                     ngx_http_upstream_vnswrr_srv_conf_t *uvnscf,
                                     ngx_uint_t s, ngx_uint_t e)
{
    ngx_uint_t i;
    ngx_int_t rindex;
    ngx_http_upstream_rr_peer_t *peer;
    ngx_http_upstream_rr_vpeers_t *vpeers;

    if (uvnscf == ((void*)0) || peers == ((void*)0)) {
        return;
    }

    vpeers = uvnscf->vpeers;

    for (i = s; i < e; i++) {
        rindex = ngx_http_upstream_get_rr_peer(peers, &peer);
        if (rindex == NGX_ERROR) {
            ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0,
                          "get rr peer is null in upstream \"%V\" ",
                          peers->name);
            if (i != 0) {
                i--;
            }

            continue;
        }

        vpeers[i].vpeer = peer;
        vpeers[i].rindex = rindex;
    }

    uvnscf->vnumber = i;

    return;
}
