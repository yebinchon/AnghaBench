#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_6__ {unsigned long long available; unsigned long long picture_count; int canceled; int /*<<< orphan*/  picture; int /*<<< orphan*/  refs; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  pic_unlock; int /*<<< orphan*/  pic_lock; } ;
typedef  TYPE_1__ picture_pool_t ;
struct TYPE_7__ {int picture_count; int /*<<< orphan*/  picture; int /*<<< orphan*/  unlock; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ picture_pool_configuration_t ;

/* Variables and functions */
 int POOL_MAX ; 
 TYPE_1__* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

picture_pool_t *FUNC6(const picture_pool_configuration_t *cfg)
{
    if (FUNC3(cfg->picture_count > POOL_MAX))
        return NULL;

    picture_pool_t *pool;
    size_t size = sizeof (*pool) + cfg->picture_count * sizeof (picture_t *);

    size += (-size) & (POOL_MAX - 1);
    pool = FUNC0(POOL_MAX, size);
    if (FUNC3(pool == NULL))
        return NULL;

    pool->pic_lock   = cfg->lock;
    pool->pic_unlock = cfg->unlock;
    FUNC5(&pool->lock);
    FUNC4(&pool->wait);
    if (cfg->picture_count == POOL_MAX)
        pool->available = ~0ULL;
    else
        pool->available = (1ULL << cfg->picture_count) - 1;
    FUNC1(&pool->refs,  1);
    pool->picture_count = cfg->picture_count;
    FUNC2(pool->picture, cfg->picture,
           cfg->picture_count * sizeof (picture_t *));
    pool->canceled = false;
    return pool;
}