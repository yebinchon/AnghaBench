
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int u_char ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {int single; int number; TYPE_7__* peer; TYPE_4__* name; int init_number; } ;
typedef TYPE_6__ ngx_http_upstream_rr_peers_t ;
struct TYPE_19__ {int * data; scalar_t__ len; } ;
struct TYPE_18__ {size_t len; int * data; } ;
struct TYPE_21__ {int socklen; int weight; int effective_weight; int max_fails; int fail_timeout; size_t check_index; struct TYPE_21__* next; scalar_t__ max_conns; scalar_t__ current_weight; TYPE_5__ id; TYPE_4__ name; struct sockaddr* sockaddr; } ;
typedef TYPE_7__ ngx_http_upstream_rr_peer_t ;
struct TYPE_22__ {TYPE_6__* peers; scalar_t__* tried; scalar_t__ data; scalar_t__ config; int * current; } ;
typedef TYPE_8__ ngx_http_upstream_rr_peer_data_t ;
struct TYPE_23__ {int naddrs; int socklen; int port; TYPE_3__* addrs; TYPE_4__ host; TYPE_4__ name; struct sockaddr* sockaddr; } ;
typedef TYPE_9__ ngx_http_upstream_resolved_t ;
struct TYPE_14__ {TYPE_2__* upstream; int pool; } ;
typedef TYPE_10__ ngx_http_request_t ;
struct TYPE_17__ {int socklen; int sockaddr; } ;
struct TYPE_15__ {int save_session; int set_session; int tries; int free; int get; TYPE_8__* data; } ;
struct TYPE_16__ {TYPE_1__ peer; } ;


 int NGX_CONF_UNSET_UINT ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 int ngx_http_upstream_empty_save_session ;
 int ngx_http_upstream_empty_set_session ;
 int ngx_http_upstream_free_round_robin_peer ;
 int ngx_http_upstream_get_round_robin_peer ;
 int ngx_http_upstream_tries (TYPE_6__*) ;
 int ngx_inet_set_port (struct sockaddr*,int ) ;
 int ngx_memcpy (struct sockaddr*,int ,int) ;
 void* ngx_palloc (int ,int) ;
 void* ngx_pcalloc (int ,size_t) ;
 int * ngx_pnalloc (int ,int ) ;
 size_t ngx_sock_ntop (struct sockaddr*,int,int *,int ,int) ;

ngx_int_t
ngx_http_upstream_create_round_robin_peer(ngx_http_request_t *r,
    ngx_http_upstream_resolved_t *ur)
{
    u_char *p;
    size_t len;
    socklen_t socklen;
    ngx_uint_t i, n;
    struct sockaddr *sockaddr;
    ngx_http_upstream_rr_peer_t *peer, **peerp;
    ngx_http_upstream_rr_peers_t *peers;
    ngx_http_upstream_rr_peer_data_t *rrp;

    rrp = r->upstream->peer.data;

    if (rrp == ((void*)0)) {
        rrp = ngx_palloc(r->pool, sizeof(ngx_http_upstream_rr_peer_data_t));
        if (rrp == ((void*)0)) {
            return NGX_ERROR;
        }

        r->upstream->peer.data = rrp;
    }

    peers = ngx_pcalloc(r->pool, sizeof(ngx_http_upstream_rr_peers_t));
    if (peers == ((void*)0)) {
        return NGX_ERROR;
    }

    peer = ngx_pcalloc(r->pool, sizeof(ngx_http_upstream_rr_peer_t)
                                * ur->naddrs);
    if (peer == ((void*)0)) {
        return NGX_ERROR;
    }

    peers->single = (ur->naddrs == 1);
    peers->number = ur->naddrs;



    peers->name = &ur->host;

    if (ur->sockaddr) {
        peer[0].sockaddr = ur->sockaddr;
        peer[0].socklen = ur->socklen;
        peer[0].name = ur->name.data ? ur->name : ur->host;




        peer[0].weight = 1;
        peer[0].effective_weight = 1;
        peer[0].current_weight = 0;
        peer[0].max_conns = 0;
        peer[0].max_fails = 1;
        peer[0].fail_timeout = 10;
        peers->peer = peer;




    } else {
        peerp = &peers->peer;

        for (i = 0; i < ur->naddrs; i++) {

            socklen = ur->addrs[i].socklen;

            sockaddr = ngx_palloc(r->pool, socklen);
            if (sockaddr == ((void*)0)) {
                return NGX_ERROR;
            }

            ngx_memcpy(sockaddr, ur->addrs[i].sockaddr, socklen);
            ngx_inet_set_port(sockaddr, ur->port);

            p = ngx_pnalloc(r->pool, NGX_SOCKADDR_STRLEN);
            if (p == ((void*)0)) {
                return NGX_ERROR;
            }

            len = ngx_sock_ntop(sockaddr, socklen, p, NGX_SOCKADDR_STRLEN, 1);

            peer[i].sockaddr = sockaddr;
            peer[i].socklen = socklen;
            peer[i].name.len = len;
            peer[i].name.data = p;




            peer[i].weight = 1;
            peer[i].effective_weight = 1;
            peer[i].current_weight = 0;
            peer[i].max_conns = 0;
            peer[i].max_fails = 1;
            peer[i].fail_timeout = 10;
            *peerp = &peer[i];
            peerp = &peer[i].next;



        }
    }

    rrp->peers = peers;
    rrp->current = ((void*)0);
    rrp->config = 0;

    if (rrp->peers->number <= 8 * sizeof(uintptr_t)) {
        rrp->tried = &rrp->data;
        rrp->data = 0;

    } else {
        n = (rrp->peers->number + (8 * sizeof(uintptr_t) - 1))
                / (8 * sizeof(uintptr_t));

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
