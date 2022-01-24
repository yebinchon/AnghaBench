#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ ngx_slab_pool_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_6__ {int /*<<< orphan*/  trylock; } ;
typedef  TYPE_2__ ngx_http_dyups_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_event_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;
struct TYPE_7__ {TYPE_1__* shpool; int /*<<< orphan*/  msg_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DYUPS_ADD ; 
 scalar_t__ NGX_HTTP_CONFLICT ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_NOT_ALLOWED ; 
 scalar_t__ NGX_HTTP_OK ; 
 int /*<<< orphan*/  ngx_cycle ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ ngx_dyups_global_ctx ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_dyups_api_enable ; 
 int /*<<< orphan*/  ngx_http_dyups_module ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

ngx_int_t
FUNC9(ngx_str_t *name, ngx_buf_t *buf, ngx_str_t *rv)
{
    ngx_int_t                    status;
    ngx_event_t                 *timer;
    ngx_slab_pool_t             *shpool;
    ngx_http_dyups_main_conf_t  *dmcf;

    dmcf = FUNC2(ngx_cycle,
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
            status = NGX_HTTP_CONFLICT;
            FUNC8(rv, "wait and try again\n");
            goto finish;
        }
    }

    FUNC3(timer);

    status = FUNC1(buf, rv);
    if (status != NGX_HTTP_OK) {
        goto finish;
    }

    status = FUNC0(name, buf, rv);
    if (status == NGX_HTTP_OK) {

        if (FUNC4(name, buf, NGX_DYUPS_ADD)) {
            FUNC8(rv, "alert: update success "
                        "but not sync to other process");
            status = NGX_HTTP_INTERNAL_SERVER_ERROR;
        }
    }

 finish:

    FUNC7(&shpool->mutex);

    return status;
}