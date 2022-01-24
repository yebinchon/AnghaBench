#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_20__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_13__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_26__ {int dynamic; size_t idx; int default_port; int down; int /*<<< orphan*/ * file_name; int /*<<< orphan*/  host; int /*<<< orphan*/  naddrs; int /*<<< orphan*/  addrs; scalar_t__ err; int /*<<< orphan*/  url; int /*<<< orphan*/ * servers; int /*<<< orphan*/  srv_conf; int /*<<< orphan*/ * ref; TYPE_3__* upstream; scalar_t__ deleted; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_2__ ngx_url_t ;
typedef  size_t ngx_uint_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_27__ {scalar_t__ port; int flags; TYPE_6__** srv_conf; scalar_t__ servers; } ;
typedef  TYPE_3__ ngx_http_upstream_srv_conf_t ;
typedef  TYPE_2__ ngx_http_upstream_server_t ;
struct TYPE_24__ {size_t nelts; TYPE_3__** elts; } ;
struct TYPE_28__ {TYPE_1__ upstreams; } ;
typedef  TYPE_5__ ngx_http_upstream_main_conf_t ;
struct TYPE_29__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_6__ ngx_http_dyups_upstream_srv_conf_t ;
typedef  TYPE_2__ ngx_http_dyups_srv_conf_t ;
struct TYPE_30__ {int /*<<< orphan*/  dy_upstreams; int /*<<< orphan*/  enable; } ;
typedef  TYPE_8__ ngx_http_dyups_main_conf_t ;
struct TYPE_31__ {int /*<<< orphan*/  srv_conf; } ;
typedef  TYPE_9__ ngx_http_conf_ctx_t ;
struct TYPE_22__ {int /*<<< orphan*/  pool; scalar_t__ ctx; } ;
typedef  TYPE_10__ ngx_conf_t ;
struct TYPE_25__ {int /*<<< orphan*/  log; } ;
struct TYPE_23__ {size_t ctx_index; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int NGX_HTTP_UPSTREAM_CREATE ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_20__* ngx_cycle ; 
 void* FUNC2 (TYPE_10__*,TYPE_13__) ; 
 TYPE_2__ ngx_http_dyups_deleted_upstream ; 
 scalar_t__ FUNC3 (TYPE_10__*) ; 
 TYPE_13__ ngx_http_dyups_module ; 
 TYPE_13__ ngx_http_upstream_module ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_conf_t *cf)
{
    ngx_url_t                            u;
    ngx_uint_t                           i;
    ngx_http_dyups_srv_conf_t           *duscf;
    ngx_http_upstream_server_t          *us;
    ngx_http_dyups_main_conf_t          *dmcf;
    ngx_http_upstream_srv_conf_t       **uscfp;
    ngx_http_upstream_main_conf_t       *umcf;
    ngx_http_dyups_upstream_srv_conf_t  *dscf;

    dmcf = FUNC2(cf, ngx_http_dyups_module);
    umcf = FUNC2(cf, ngx_http_upstream_module);

    if (!dmcf->enable) {
        return NGX_OK;
    }

    uscfp = umcf->upstreams.elts;
    for (i = 0; i < umcf->upstreams.nelts; i++) {

        duscf = FUNC1(&dmcf->dy_upstreams);
        if (duscf == NULL) {
            return NGX_ERROR;
        }

        FUNC5(duscf, sizeof(ngx_http_dyups_srv_conf_t));

        duscf->pool = NULL;
        duscf->upstream = uscfp[i];
        duscf->dynamic = (uscfp[i]->port == 0
                          && uscfp[i]->srv_conf && uscfp[i]->servers
                          && uscfp[i]->flags & NGX_HTTP_UPSTREAM_CREATE);
        duscf->deleted = 0;
        duscf->idx = i;

        if (duscf->dynamic) {
            dscf = duscf->upstream->srv_conf[ngx_http_dyups_module.ctx_index];
            duscf->ref = &dscf->ref;
        }
    }

    /* alloc a dummy upstream */

    FUNC5(&ngx_http_dyups_deleted_upstream,
                sizeof(ngx_http_upstream_srv_conf_t));
    ngx_http_dyups_deleted_upstream.srv_conf = ((ngx_http_conf_ctx_t *)
                                                (cf->ctx))->srv_conf;
    ngx_http_dyups_deleted_upstream.servers = FUNC0(cf->pool, 1,
                                           sizeof(ngx_http_upstream_server_t));

    us = FUNC1(ngx_http_dyups_deleted_upstream.servers);
    if (us == NULL) {
        return NGX_ERROR;
    }

    FUNC5(&u, sizeof(ngx_url_t));
    FUNC5(us, sizeof(ngx_http_upstream_server_t));

    u.default_port = 80;
    FUNC7(&u.url, "0.0.0.0");

    if (FUNC6(cf->pool, &u) != NGX_OK) {
        if (u.err) {
            FUNC4(NGX_LOG_ALERT, ngx_cycle->log, 0,
                          "[dyups] %s in init", u.err);
        }

        return NGX_ERROR;
    }

    us->addrs = u.addrs;
    us->naddrs = u.naddrs;
    us->down = 1;

    FUNC7(&ngx_http_dyups_deleted_upstream.host,
                "_dyups_upstream_down_host_");
    ngx_http_dyups_deleted_upstream.file_name = (u_char *) "dyups_upstream";

#ifdef NGX_DYUPS_LUA
    return ngx_http_dyups_lua_preload(cf);
#else
    return NGX_OK;
#endif
}