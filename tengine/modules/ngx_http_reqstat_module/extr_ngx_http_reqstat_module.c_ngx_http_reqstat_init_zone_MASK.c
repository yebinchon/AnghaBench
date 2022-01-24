#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * log_ctx; TYPE_2__* data; } ;
typedef  TYPE_3__ ngx_slab_pool_t ;
struct TYPE_17__ {int len; } ;
struct TYPE_12__ {TYPE_6__ name; scalar_t__ addr; int /*<<< orphan*/  log; } ;
struct TYPE_15__ {TYPE_1__ shm; TYPE_5__* data; } ;
typedef  TYPE_4__ ngx_shm_zone_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_reqstat_shctx_t ;
struct TYPE_16__ {TYPE_2__* sh; TYPE_3__* shpool; TYPE_9__* val; } ;
typedef  TYPE_5__ ngx_http_reqstat_ctx_t ;
struct TYPE_18__ {int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  visit; int /*<<< orphan*/  queue; int /*<<< orphan*/  sentinel; int /*<<< orphan*/  rbtree; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  ngx_http_reqstat_rbtree_insert_value ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_6__*,TYPE_9__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,TYPE_6__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_shm_zone_t *shm_zone, void *data)
{
    size_t                        n;
    ngx_http_reqstat_ctx_t       *ctx, *octx;

    octx = data;
    ctx = shm_zone->data;

    if (octx != NULL) {
        if (FUNC5(ctx->val->data, octx->val->data) != 0) {
            FUNC0(NGX_LOG_EMERG, shm_zone->shm.log, 0,
                          "reqstat \"%V\" uses the value str \"%V\" "
                          "while previously it used \"%V\"",
                          &shm_zone->shm.name, ctx->val, octx->val);
            return NGX_ERROR;
        }

        ctx->shpool = octx->shpool;
        ctx->sh = octx->sh;

        return NGX_OK;
    }

    ctx->shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;

    ctx->sh = FUNC3(ctx->shpool, sizeof(ngx_http_reqstat_shctx_t));
    if (ctx->sh == NULL) {
        return NGX_ERROR;
    }

    ctx->shpool->data = ctx->sh;

    n = sizeof(" in req_status zone \"\"") + shm_zone->shm.name.len;
    ctx->shpool->log_ctx = FUNC3(ctx->shpool, n);
    if (ctx->shpool->log_ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC4(ctx->shpool->log_ctx,
                " in req_status zone \"%V\"%Z",
                &shm_zone->shm.name);

    FUNC2(&ctx->sh->rbtree, &ctx->sh->sentinel,
                    ngx_http_reqstat_rbtree_insert_value);

    FUNC1(&ctx->sh->queue);
    FUNC1(&ctx->sh->visit);

    return NGX_OK;
}