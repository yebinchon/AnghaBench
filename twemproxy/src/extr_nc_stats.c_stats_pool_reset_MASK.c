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
typedef  scalar_t__ uint32_t ;
struct stats_server {int /*<<< orphan*/  metric; } ;
struct array {int dummy; } ;
struct stats_pool {struct array server; int /*<<< orphan*/  metric; } ;

/* Variables and functions */
 void* FUNC0 (struct array*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct array*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct array *stats_pool)
{
    uint32_t i, npool;

    npool = FUNC1(stats_pool);

    for (i = 0; i < npool; i++) {
        struct stats_pool *stp = FUNC0(stats_pool, i);
        uint32_t j, nserver;

        FUNC2(&stp->metric);

        nserver = FUNC1(&stp->server);
        for (j = 0; j < nserver; j++) {
            struct stats_server *sts = FUNC0(&stp->server, j);
            FUNC2(&sts->metric);
        }
    }
}