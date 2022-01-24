#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * p_next; } ;
typedef  TYPE_1__ picture_t ;
struct TYPE_9__ {scalar_t__ refs; unsigned long long available; scalar_t__ (* pic_lock ) (TYPE_1__*) ;int /*<<< orphan*/  lock; TYPE_1__** picture; int /*<<< orphan*/  canceled; } ;
typedef  TYPE_2__ picture_pool_t ;

/* Variables and functions */
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

picture_t *FUNC8(picture_pool_t *pool)
{
    unsigned long long available;

    FUNC6(&pool->lock);
    FUNC0(pool->refs > 0);
    available = pool->available;

    while (available != 0)
    {
        int i = FUNC2(available);

        if (FUNC5(pool->canceled))
            break;

        pool->available &= ~(1ULL << i);
        FUNC7(&pool->lock);
        available &= ~(1ULL << i);

        picture_t *picture = pool->picture[i];

        if (pool->pic_lock != NULL && pool->pic_lock(picture) != VLC_SUCCESS) {
            FUNC6(&pool->lock);
            pool->available |= 1ULL << i;
            continue;
        }

        picture_t *clone = FUNC3(pool, i);
        if (clone != NULL) {
            FUNC0(clone->p_next == NULL);
            FUNC1(&pool->refs, 1, memory_order_relaxed);
        }
        return clone;
    }

    FUNC7(&pool->lock);
    return NULL;
}