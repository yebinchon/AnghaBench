#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_stream_upstream_srv_conf_t ;
struct TYPE_18__ {int /*<<< orphan*/ * ranges; scalar_t__ two; } ;
typedef  TYPE_5__ ngx_stream_upstream_random_srv_conf_t ;
struct TYPE_17__ {TYPE_8__* peers; } ;
struct TYPE_19__ {TYPE_4__ rrp; scalar_t__ tries; TYPE_5__* conf; } ;
typedef  TYPE_6__ ngx_stream_upstream_random_peer_data_t ;
struct TYPE_20__ {TYPE_3__* upstream; TYPE_1__* connection; } ;
typedef  TYPE_7__ ngx_stream_session_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_21__ {scalar_t__ shpool; } ;
struct TYPE_15__ {int /*<<< orphan*/  get; TYPE_4__* data; } ;
struct TYPE_16__ {TYPE_2__ peer; } ;
struct TYPE_14__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stream_upstream_get_random2_peer ; 
 int /*<<< orphan*/  ngx_stream_upstream_get_random_peer ; 
 scalar_t__ FUNC3 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_stream_upstream_random_module ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_stream_session_t *s,
    ngx_stream_upstream_srv_conf_t *us)
{
    ngx_stream_upstream_random_srv_conf_t   *rcf;
    ngx_stream_upstream_random_peer_data_t  *rp;

    FUNC0(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "init random peer");

    rcf = FUNC2(us,
                                            ngx_stream_upstream_random_module);

    rp = FUNC1(s->connection->pool,
                    sizeof(ngx_stream_upstream_random_peer_data_t));
    if (rp == NULL) {
        return NGX_ERROR;
    }

    s->upstream->peer.data = &rp->rrp;

    if (FUNC3(s, us) != NGX_OK) {
        return NGX_ERROR;
    }

    if (rcf->two) {
        s->upstream->peer.get = ngx_stream_upstream_get_random2_peer;

    } else {
        s->upstream->peer.get = ngx_stream_upstream_get_random_peer;
    }

    rp->conf = rcf;
    rp->tries = 0;

    FUNC4(rp->rrp.peers);

#if (NGX_STREAM_UPSTREAM_ZONE)
    if (rp->rrp.peers->shpool && rcf->ranges == NULL) {
        if (ngx_stream_upstream_update_random(NULL, us) != NGX_OK) {
            ngx_stream_upstream_rr_peers_unlock(rp->rrp.peers);
            return NGX_ERROR;
        }
    }
#endif

    FUNC5(rp->rrp.peers);

    return NGX_OK;
}