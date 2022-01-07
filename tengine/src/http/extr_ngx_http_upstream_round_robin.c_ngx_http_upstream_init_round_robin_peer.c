
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {TYPE_9__* data; } ;
struct TYPE_16__ {TYPE_1__ peer; } ;
typedef TYPE_5__ ngx_http_upstream_srv_conf_t ;
struct TYPE_17__ {TYPE_9__* peers; scalar_t__* tried; scalar_t__ data; scalar_t__ config; int * current; } ;
typedef TYPE_6__ ngx_http_upstream_rr_peer_data_t ;
struct TYPE_18__ {TYPE_4__* upstream; int pool; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_19__ {int number; TYPE_2__* next; } ;
struct TYPE_14__ {int save_session; int set_session; int tries; int free; int get; TYPE_6__* data; } ;
struct TYPE_15__ {TYPE_3__ peer; } ;
struct TYPE_13__ {int number; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_http_upstream_free_round_robin_peer ;
 int ngx_http_upstream_get_round_robin_peer ;
 int ngx_http_upstream_save_round_robin_peer_session ;
 int ngx_http_upstream_set_round_robin_peer_session ;
 int ngx_http_upstream_tries (TYPE_9__*) ;
 TYPE_6__* ngx_palloc (int ,int) ;
 scalar_t__* ngx_pcalloc (int ,int) ;

ngx_int_t
ngx_http_upstream_init_round_robin_peer(ngx_http_request_t *r,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_uint_t n;
    ngx_http_upstream_rr_peer_data_t *rrp;

    rrp = r->upstream->peer.data;

    if (rrp == ((void*)0)) {
        rrp = ngx_palloc(r->pool, sizeof(ngx_http_upstream_rr_peer_data_t));
        if (rrp == ((void*)0)) {
            return NGX_ERROR;
        }

        r->upstream->peer.data = rrp;
    }

    rrp->peers = us->peer.data;
    rrp->current = ((void*)0);
    rrp->config = 0;

    n = rrp->peers->number;

    if (rrp->peers->next && rrp->peers->next->number > n) {
        n = rrp->peers->next->number;
    }

    if (n <= 8 * sizeof(uintptr_t)) {
        rrp->tried = &rrp->data;
        rrp->data = 0;

    } else {
        n = (n + (8 * sizeof(uintptr_t) - 1)) / (8 * sizeof(uintptr_t));

        rrp->tried = ngx_pcalloc(r->pool, n * sizeof(uintptr_t));
        if (rrp->tried == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    r->upstream->peer.get = ngx_http_upstream_get_round_robin_peer;
    r->upstream->peer.free = ngx_http_upstream_free_round_robin_peer;
    r->upstream->peer.tries = ngx_http_upstream_tries(rrp->peers);







    return NGX_OK;
}
