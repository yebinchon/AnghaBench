#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_13__ {int /*<<< orphan*/  init; } ;
struct TYPE_14__ {TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_http_upstream_srv_conf_t ;
struct TYPE_15__ {scalar_t__ (* original_init_upstream ) (TYPE_5__*,TYPE_2__*) ;int max_cached; int /*<<< orphan*/  free; int /*<<< orphan*/  cache; int /*<<< orphan*/  original_init_peer; int /*<<< orphan*/  requests; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_3__ ngx_http_upstream_keepalive_srv_conf_t ;
struct TYPE_16__ {TYPE_3__* conf; int /*<<< orphan*/  queue; } ;
typedef  TYPE_4__ ngx_http_upstream_keepalive_cache_t ;
struct TYPE_17__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  log; } ;
typedef  TYPE_5__ ngx_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_upstream_init_keepalive_peer ; 
 int /*<<< orphan*/  ngx_http_upstream_keepalive_module ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_5__*,TYPE_2__*) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_conf_t *cf,
    ngx_http_upstream_srv_conf_t *us)
{
    ngx_uint_t                               i;
    ngx_http_upstream_keepalive_srv_conf_t  *kcf;
    ngx_http_upstream_keepalive_cache_t     *cached;

    FUNC3(NGX_LOG_DEBUG_HTTP, cf->log, 0,
                   "init keepalive");

    kcf = FUNC2(us,
                                          ngx_http_upstream_keepalive_module);

    FUNC0(kcf->timeout, 60000);
    FUNC1(kcf->requests, 100);

    if (kcf->original_init_upstream(cf, us) != NGX_OK) {
        return NGX_ERROR;
    }

    kcf->original_init_peer = us->peer.init;

    us->peer.init = ngx_http_upstream_init_keepalive_peer;

    /* allocate cache items and add to free queue */

    cached = FUNC4(cf->pool,
                sizeof(ngx_http_upstream_keepalive_cache_t) * kcf->max_cached);
    if (cached == NULL) {
        return NGX_ERROR;
    }

    FUNC5(&kcf->cache);
    FUNC5(&kcf->free);

    for (i = 0; i < kcf->max_cached; i++) {
        FUNC6(&kcf->free, &cached[i].queue);
        cached[i].conf = kcf;
    }

    return NGX_OK;
}