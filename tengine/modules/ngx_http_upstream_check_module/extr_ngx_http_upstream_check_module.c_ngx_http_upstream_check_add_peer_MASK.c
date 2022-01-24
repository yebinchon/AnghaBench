#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_26__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_29__ {int /*<<< orphan*/  host; int /*<<< orphan*/ * srv_conf; } ;
typedef  TYPE_2__ ngx_http_upstream_srv_conf_t ;
struct TYPE_30__ {scalar_t__ check_interval; scalar_t__ port; scalar_t__ unique; } ;
typedef  TYPE_3__ ngx_http_upstream_check_srv_conf_t ;
struct TYPE_28__ {scalar_t__ nelts; } ;
struct TYPE_31__ {int /*<<< orphan*/  checksum; TYPE_26__ peers; } ;
typedef  TYPE_4__ ngx_http_upstream_check_peers_t ;
struct TYPE_32__ {scalar_t__ index; TYPE_8__* peer_addr; TYPE_8__* check_peer_addr; int /*<<< orphan*/ * upstream_name; TYPE_3__* conf; } ;
typedef  TYPE_5__ ngx_http_upstream_check_peer_t ;
struct TYPE_33__ {TYPE_4__* peers; } ;
typedef  TYPE_6__ ngx_http_upstream_check_main_conf_t ;
struct TYPE_34__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  log; } ;
typedef  TYPE_7__ ngx_conf_t ;
struct TYPE_27__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_35__ {TYPE_1__ name; } ;
typedef  TYPE_8__ ngx_addr_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ NGX_PROCESS_WORKER ; 
 TYPE_5__* FUNC0 (TYPE_26__*) ; 
 TYPE_6__* FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_8__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_8__*,scalar_t__) ; 
 int /*<<< orphan*/  ngx_http_upstream_check_module ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_8__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ngx_process ; 

ngx_uint_t
FUNC10(ngx_conf_t *cf,
    ngx_http_upstream_srv_conf_t *us, ngx_addr_t *peer_addr)
{
    ngx_uint_t                            index;
    ngx_http_upstream_check_peer_t       *peer;
    ngx_http_upstream_check_peers_t      *peers;
    ngx_http_upstream_check_srv_conf_t   *ucscf;
    ngx_http_upstream_check_main_conf_t  *ucmcf;

    if (us->srv_conf == NULL) {
        return NGX_ERROR;
    }

    ucscf = FUNC2(us, ngx_http_upstream_check_module);

    if(ucscf->check_interval == 0) {
        return NGX_ERROR;
    }

    FUNC6(NGX_LOG_DEBUG_HTTP, cf->log, 0,
                   "http upstream check add upstream process: %ui",
                   ngx_process);

    if (ngx_process == NGX_PROCESS_WORKER) {
        return FUNC3(cf->pool, us, peer_addr);
    }

    ucmcf = FUNC1(cf,
                                               ngx_http_upstream_check_module);
    peers = ucmcf->peers;

    if (ucscf->unique) {
        index = FUNC5(peers, peer_addr, ucscf);
        if (index != (ngx_uint_t) NGX_ERROR) {
            return index;
        }
    }

    peer = FUNC0(&peers->peers);
    if (peer == NULL) {
        return NGX_ERROR;
    }

    FUNC7(peer, sizeof(ngx_http_upstream_check_peer_t));

    peer->index = peers->peers.nelts - 1;
    peer->conf = ucscf;
    peer->upstream_name = &us->host;
    peer->peer_addr = peer_addr;

    if (ucscf->port) {
        peer->check_peer_addr = FUNC9(cf->pool, sizeof(ngx_addr_t));
        if (peer->check_peer_addr == NULL) {
            return NGX_ERROR;
        }

        if (FUNC4(cf->pool,
                peer->check_peer_addr, peer_addr, ucscf->port)
            != NGX_OK) {

            return NGX_ERROR;
        }

    } else {
        peer->check_peer_addr = peer->peer_addr;
    }

    peers->checksum +=
        FUNC8(peer_addr->name.data, peer_addr->name.len);

    return peer->index;
}