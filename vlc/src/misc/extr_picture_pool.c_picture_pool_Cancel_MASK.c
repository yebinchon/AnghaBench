#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ refs; int canceled; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
typedef  TYPE_1__ picture_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(picture_pool_t *pool, bool canceled)
{
    FUNC2(&pool->lock);
    FUNC0(pool->refs > 0);

    pool->canceled = canceled;
    if (canceled)
        FUNC1(&pool->wait);
    FUNC3(&pool->lock);
}