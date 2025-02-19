
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef scalar_t__ time_t ;
typedef int ngx_uint_t ;
struct TYPE_17__ {int * name; int socklen; int sockaddr; int log; int * connection; scalar_t__ cached; int tries; } ;
typedef TYPE_2__ ngx_peer_connection_t ;
typedef int ngx_int_t ;
struct TYPE_18__ {int weight; scalar_t__ max_fails; scalar_t__ fails; scalar_t__ checked; scalar_t__ fail_timeout; scalar_t__ max_conns; scalar_t__ conns; int name; int socklen; int sockaddr; int check_index; scalar_t__ down; struct TYPE_18__* next; } ;
typedef TYPE_3__ ngx_http_upstream_rr_peer_t ;
struct TYPE_20__ {uintptr_t* tried; TYPE_9__* peers; TYPE_3__* current; } ;
struct TYPE_16__ {scalar_t__ len; int * data; } ;
struct TYPE_19__ {int tries; int (* get_rr_peer ) (TYPE_2__*,TYPE_6__*) ;scalar_t__ rehash; int hash; TYPE_6__ rrp; TYPE_1__ key; } ;
typedef TYPE_4__ ngx_http_upstream_hash_peer_data_t ;
struct TYPE_21__ {int total_weight; TYPE_3__* peer; scalar_t__ single; } ;


 int NGX_INT_T_LEN ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_crc32_final (int) ;
 int ngx_crc32_init (int) ;
 int ngx_crc32_update (int*,int *,size_t) ;
 scalar_t__ ngx_http_upstream_check_peer_down (int ) ;
 int ngx_http_upstream_rr_peer_lock (TYPE_9__*,TYPE_3__*) ;
 int ngx_http_upstream_rr_peer_unlock (TYPE_9__*,TYPE_3__*) ;
 int ngx_http_upstream_rr_peers_rlock (TYPE_9__*) ;
 int ngx_http_upstream_rr_peers_unlock (TYPE_9__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int * ngx_sprintf (int *,char*,scalar_t__) ;
 scalar_t__ ngx_time () ;
 int stub1 (TYPE_2__*,TYPE_6__*) ;
 int stub2 (TYPE_2__*,TYPE_6__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_get_hash_peer(ngx_peer_connection_t *pc, void *data)
{
    ngx_http_upstream_hash_peer_data_t *hp = data;

    time_t now;
    u_char buf[NGX_INT_T_LEN];
    size_t size;
    uint32_t hash;
    ngx_int_t w;
    uintptr_t m;
    ngx_uint_t n, p;
    ngx_http_upstream_rr_peer_t *peer;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "get hash peer, try: %ui", pc->tries);

    ngx_http_upstream_rr_peers_rlock(hp->rrp.peers);

    if (hp->tries > 20 || hp->rrp.peers->single || hp->key.len == 0) {
        ngx_http_upstream_rr_peers_unlock(hp->rrp.peers);
        return hp->get_rr_peer(pc, &hp->rrp);
    }

    now = ngx_time();

    pc->cached = 0;
    pc->connection = ((void*)0);

    for ( ;; ) {







        ngx_crc32_init(hash);

        if (hp->rehash > 0) {
            size = ngx_sprintf(buf, "%ui", hp->rehash) - buf;
            ngx_crc32_update(&hash, buf, size);
        }

        ngx_crc32_update(&hash, hp->key.data, hp->key.len);
        ngx_crc32_final(hash);

        hash = (hash >> 16) & 0x7fff;

        hp->hash += hash;
        hp->rehash++;

        w = hp->hash % hp->rrp.peers->total_weight;
        peer = hp->rrp.peers->peer;
        p = 0;

        while (w >= peer->weight) {
            w -= peer->weight;
            peer = peer->next;
            p++;
        }

        n = p / (8 * sizeof(uintptr_t));
        m = (uintptr_t) 1 << p % (8 * sizeof(uintptr_t));

        if (hp->rrp.tried[n] & m) {
            goto next;
        }

        ngx_http_upstream_rr_peer_lock(hp->rrp.peers, peer);

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                       "get hash peer, value:%uD, peer:%ui", hp->hash, p);

        if (peer->down) {
            ngx_http_upstream_rr_peer_unlock(hp->rrp.peers, peer);
            goto next;
        }
        if (peer->max_fails
            && peer->fails >= peer->max_fails
            && now - peer->checked <= peer->fail_timeout)
        {
            ngx_http_upstream_rr_peer_unlock(hp->rrp.peers, peer);
            goto next;
        }

        if (peer->max_conns && peer->conns >= peer->max_conns) {
            ngx_http_upstream_rr_peer_unlock(hp->rrp.peers, peer);
            goto next;
        }

        break;

    next:

        if (++hp->tries > 20) {
            ngx_http_upstream_rr_peers_unlock(hp->rrp.peers);
            return hp->get_rr_peer(pc, &hp->rrp);
        }
    }

    hp->rrp.current = peer;

    pc->sockaddr = peer->sockaddr;
    pc->socklen = peer->socklen;
    pc->name = &peer->name;

    peer->conns++;

    if (now - peer->checked > peer->fail_timeout) {
        peer->checked = now;
    }

    ngx_http_upstream_rr_peer_unlock(hp->rrp.peers, peer);
    ngx_http_upstream_rr_peers_unlock(hp->rrp.peers);

    hp->rrp.tried[n] |= m;

    return NGX_OK;
}
