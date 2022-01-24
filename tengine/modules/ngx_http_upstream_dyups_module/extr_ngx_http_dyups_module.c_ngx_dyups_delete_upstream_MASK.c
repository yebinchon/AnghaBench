#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ ngx_slab_pool_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_8__ {int /*<<< orphan*/  trylock; } ;
typedef  TYPE_2__ ngx_http_dyups_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_event_t ;
struct TYPE_10__ {TYPE_1__* shpool; int /*<<< orphan*/  msg_timer; } ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DYUPS_DELETE ; 
 scalar_t__ NGX_HTTP_CONFLICT ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_NOT_ALLOWED ; 
 scalar_t__ NGX_HTTP_OK ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 scalar_t__ NGX_OK ; 
 TYPE_4__* ngx_cycle ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__ ngx_dyups_global_ctx ; 
 TYPE_2__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_dyups_api_enable ; 
 int /*<<< orphan*/  ngx_http_dyups_module ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

ngx_int_t
FUNC9(ngx_str_t *name, ngx_str_t *rv)
{
    ngx_int_t                    status, rc;
    ngx_event_t                 *timer;
    ngx_slab_pool_t             *shpool;
    ngx_http_dyups_main_conf_t  *dmcf;

    dmcf = FUNC1(ngx_cycle,
                                               ngx_http_dyups_module);
    timer = &ngx_dyups_global_ctx.msg_timer;
    shpool = ngx_dyups_global_ctx.shpool;

    if (!ngx_http_dyups_api_enable) {
        FUNC8(rv, "API disabled\n");
        return NGX_HTTP_NOT_ALLOWED;
    }

    if (!dmcf->trylock) {

        FUNC5(&shpool->mutex);

    } else {

        if (!FUNC6(&shpool->mutex)) {
            return NGX_HTTP_CONFLICT;
        }

    }

    FUNC2(timer);

    status = FUNC0(name, rv);
    if (status != NGX_HTTP_OK) {
        goto finish;
    }

    rc = FUNC3(name, NULL, NGX_DYUPS_DELETE);
    if (rc != NGX_OK) {
        FUNC8(rv, "alert: delte success but not sync to other process");
        FUNC4(NGX_LOG_ALERT, ngx_cycle->log, 0, "[dyups] %V", &rv);
        status = NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

 finish:

    FUNC7(&shpool->mutex);

    return status;
}