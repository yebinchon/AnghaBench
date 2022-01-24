#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_str_t ;
typedef  int ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_upstream_srv_conf_t ;
struct TYPE_12__ {int nelts; } ;
struct TYPE_13__ {TYPE_11__ upstreams; } ;
typedef  TYPE_1__ ngx_http_upstream_main_conf_t ;
struct TYPE_14__ {int idx; int /*<<< orphan*/  deleted; } ;
typedef  TYPE_2__ ngx_http_dyups_srv_conf_t ;
struct TYPE_15__ {TYPE_11__ dy_upstreams; } ;
typedef  TYPE_3__ ngx_http_dyups_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int NGX_HTTP_OK ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int NGX_OK ; 
 void* FUNC0 (TYPE_11__*) ; 
 TYPE_5__* ngx_cycle ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_dyups_module ; 
 int /*<<< orphan*/  ngx_http_upstream_module ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC9(ngx_str_t *name, ngx_buf_t *buf, ngx_str_t *rv)
{
    ngx_int_t                       rc, idx;
    ngx_http_dyups_srv_conf_t      *duscf;
    ngx_http_dyups_main_conf_t     *dumcf;
    ngx_http_upstream_srv_conf_t  **uscfp;
    ngx_http_upstream_main_conf_t  *umcf;

    umcf = FUNC5(ngx_cycle,
                                               ngx_http_upstream_module);
    dumcf = FUNC5(ngx_cycle,
                                                ngx_http_dyups_module);

    duscf = FUNC2(name, &idx);
    if (duscf) {
        FUNC6(NGX_LOG_DEBUG, ngx_cycle->log, 0,
                      "[dyups] upstream reuse, idx: [%i]", idx);

        if (!duscf->deleted) {
            FUNC6(NGX_LOG_DEBUG, ngx_cycle->log, 0,
                          "[dyups] upstream delete first");
            FUNC4(duscf);

            duscf = FUNC2(name, &idx);

            FUNC6(NGX_LOG_DEBUG, ngx_cycle->log, 0,
                          "[dyups] find another, idx: [%i]", idx);
        }
    }

    if (idx == -1) {
        /* need create a new upstream */

        FUNC6(NGX_LOG_INFO, ngx_cycle->log, 0,
                      "[dyups] create upstream %V", name);

        duscf = FUNC0(&dumcf->dy_upstreams);
        if (duscf == NULL) {
            FUNC8(rv, "out of memory");
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        uscfp = FUNC0(&umcf->upstreams);
        if (uscfp == NULL) {
            FUNC8(rv, "out of memory");
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        FUNC7(duscf, sizeof(ngx_http_dyups_srv_conf_t));
        idx = umcf->upstreams.nelts - 1;
    }

    duscf->idx = idx;
    rc = FUNC3(duscf, name, idx);

    if (rc != NGX_OK) {
        FUNC8(rv, "init upstream failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    /* init upstream */
    rc = FUNC1(duscf, buf);
    if (rc != NGX_OK) {
        FUNC8(rv, "add server failed");
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    FUNC8(rv, "success");

    return NGX_HTTP_OK;
}