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
struct TYPE_9__ {int /*<<< orphan*/  curl; scalar_t__ release; } ;
struct TYPE_8__ {scalar_t__ err_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ ConnectionPool ;
typedef  TYPE_2__ Connection ;

/* Variables and functions */
 scalar_t__ CLEAR_POOL_ERR_CNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (ConnectionPool *pool, Connection *conn)
{
    if (!conn)
        return;

    if (conn->release) {
        FUNC0 (conn);

        FUNC4 (&pool->lock);
        if (++pool->err_cnt >= CLEAR_POOL_ERR_CNT) {
            FUNC1 (pool);
        }
        FUNC5 (&pool->lock);

        return;
    }

    FUNC2 (conn->curl);

    /* Reset error count when one connection succeeded. */
    FUNC4 (&pool->lock);
    pool->err_cnt = 0;
    FUNC3 (pool->queue, conn);
    FUNC5 (&pool->lock);
}