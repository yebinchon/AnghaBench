#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_11__ {scalar_t__ init_upstream; } ;
struct TYPE_14__ {int flags; TYPE_1__ peer; } ;
typedef  TYPE_4__ ngx_http_upstream_srv_conf_t ;
struct TYPE_15__ {int two; } ;
typedef  TYPE_5__ ngx_http_upstream_random_srv_conf_t ;
struct TYPE_16__ {TYPE_2__* args; } ;
typedef  TYPE_6__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_12__ {int nelts; TYPE_3__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int NGX_HTTP_UPSTREAM_CREATE ; 
 int NGX_HTTP_UPSTREAM_DOWN ; 
 int NGX_HTTP_UPSTREAM_FAIL_TIMEOUT ; 
 int NGX_HTTP_UPSTREAM_MAX_CONNS ; 
 int NGX_HTTP_UPSTREAM_MAX_FAILS ; 
 int NGX_HTTP_UPSTREAM_WEIGHT ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_4__* FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_http_upstream_init_random ; 
 int /*<<< orphan*/  ngx_http_upstream_module ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *
FUNC3(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_upstream_random_srv_conf_t  *rcf = conf;

    ngx_str_t                     *value;
    ngx_http_upstream_srv_conf_t  *uscf;

    uscf = FUNC1(cf, ngx_http_upstream_module);

    if (uscf->peer.init_upstream) {
        FUNC0(NGX_LOG_WARN, cf, 0,
                           "load balancing method redefined");
    }

    uscf->peer.init_upstream = ngx_http_upstream_init_random;

    uscf->flags = NGX_HTTP_UPSTREAM_CREATE
                  |NGX_HTTP_UPSTREAM_WEIGHT
                  |NGX_HTTP_UPSTREAM_MAX_CONNS
                  |NGX_HTTP_UPSTREAM_MAX_FAILS
                  |NGX_HTTP_UPSTREAM_FAIL_TIMEOUT
                  |NGX_HTTP_UPSTREAM_DOWN;

    if (cf->args->nelts == 1) {
        return NGX_CONF_OK;
    }

    value = cf->args->elts;

    if (FUNC2(value[1].data, "two") == 0) {
        rcf->two = 1;

    } else {
        FUNC0(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[1]);
        return NGX_CONF_ERROR;
    }

    if (cf->args->nelts == 2) {
        return NGX_CONF_OK;
    }

    if (FUNC2(value[2].data, "least_conn") != 0) {
        FUNC0(NGX_LOG_EMERG, cf, 0,
                           "invalid parameter \"%V\"", &value[2]);
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}