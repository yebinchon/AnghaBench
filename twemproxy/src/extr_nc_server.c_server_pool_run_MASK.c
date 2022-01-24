#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct server_pool {int dist_type; int /*<<< orphan*/  server; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DIST_KETAMA 130 
#define  DIST_MODULA 129 
#define  DIST_RANDOM 128 
 int /*<<< orphan*/  NC_ERROR ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct server_pool*) ; 
 int /*<<< orphan*/  FUNC4 (struct server_pool*) ; 
 int /*<<< orphan*/  FUNC5 (struct server_pool*) ; 

rstatus_t
FUNC6(struct server_pool *pool)
{
    FUNC0(FUNC2(&pool->server) != 0);

    switch (pool->dist_type) {
    case DIST_KETAMA:
        return FUNC3(pool);

    case DIST_MODULA:
        return FUNC4(pool);

    case DIST_RANDOM:
        return FUNC5(pool);

    default:
        FUNC1();
        return NC_ERROR;
    }

    return NC_OK;
}