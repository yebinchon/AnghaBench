#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_14__ {TYPE_11__* p_window; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  pool_cfg ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  picture_pool_t ;
struct TYPE_15__ {unsigned int picture_count; int /*<<< orphan*/  unlock; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** picture; } ;
typedef  TYPE_3__ picture_pool_configuration_t ;
struct TYPE_12__ {unsigned int i_pic_count; int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_11__*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  PoolLockOpaquePicture ; 
 int /*<<< orphan*/  PoolUnlockOpaquePicture ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static picture_pool_t *FUNC9(vout_display_t *vd, unsigned requested_count)
{
    vout_display_sys_t *sys = vd->sys;
    picture_pool_t *pool = NULL;
    picture_t **pp_pics = NULL;
    unsigned int i = 0;

    FUNC6(vd, "PoolAlloc: request %d frames", requested_count);
    if (FUNC0(sys, sys->p_window, requested_count) != 0)
        goto error;

    requested_count = sys->p_window->i_pic_count;
    FUNC6(vd, "PoolAlloc: got %d frames", requested_count);

    FUNC2(sys, &sys->p_window->fmt);

    pp_pics = FUNC3(requested_count, sizeof(picture_t));

    for (i = 0; i < requested_count; i++)
    {
        picture_t *p_pic = FUNC1(sys, &sys->p_window->fmt, true);
        if (!p_pic)
            goto error;

        pp_pics[i] = p_pic;
    }

    picture_pool_configuration_t pool_cfg;
    FUNC5(&pool_cfg, 0, sizeof(pool_cfg));
    pool_cfg.picture_count = requested_count;
    pool_cfg.picture       = pp_pics;
    pool_cfg.lock      = PoolLockOpaquePicture;
    pool_cfg.unlock    = PoolUnlockOpaquePicture;
    pool = FUNC8(&pool_cfg);

error:
    if (!pool && pp_pics) {
        for (unsigned j = 0; j < i; j++)
            FUNC7(pp_pics[j]);
    }
    FUNC4(pp_pics);
    return pool;
}