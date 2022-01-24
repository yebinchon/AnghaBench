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
typedef  scalar_t__ uint32_t ;
struct stats_server {int /*<<< orphan*/  metric; } ;
struct TYPE_3__ {int /*<<< orphan*/  elem; } ;
struct stats_pool {TYPE_1__ server; int /*<<< orphan*/  metric; } ;
struct stats {scalar_t__ aggregate; TYPE_1__ sum; TYPE_1__ shadow; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_PVERB ; 
 void* FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct stats *st)
{
    uint32_t i;

    if (st->aggregate == 0) {
        FUNC2(LOG_PVERB, "skip aggregate of shadow %p to sum %p as "
                  "generator is slow", st->shadow.elem, st->sum.elem);
        return;
    }

    FUNC2(LOG_PVERB, "aggregate stats shadow %p to sum %p", st->shadow.elem,
              st->sum.elem);

    for (i = 0; i < FUNC1(&st->shadow); i++) {
        struct stats_pool *stp1, *stp2;
        uint32_t j;

        stp1 = FUNC0(&st->shadow, i);
        stp2 = FUNC0(&st->sum, i);
        FUNC3(&stp2->metric, &stp1->metric);

        for (j = 0; j < FUNC1(&stp1->server); j++) {
            struct stats_server *sts1, *sts2;

            sts1 = FUNC0(&stp1->server, j);
            sts2 = FUNC0(&stp2->server, j);
            FUNC3(&sts2->metric, &sts1->metric);
        }
    }

    st->aggregate = 0;
}