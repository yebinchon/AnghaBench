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
struct stats_metric {int dummy; } ;
struct array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ STATS_POOL_NFIELD ; 
 scalar_t__ STATS_SERVER_NFIELD ; 
 struct stats_metric* FUNC1 (struct array*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct array*) ; 
 int /*<<< orphan*/  FUNC3 (struct stats_metric*) ; 

__attribute__((used)) static void
FUNC4(struct array *stats_metric)
{
    uint32_t i, nmetric;

    nmetric = FUNC2(stats_metric);
    FUNC0(nmetric == STATS_POOL_NFIELD || nmetric == STATS_SERVER_NFIELD);

    for (i = 0; i < nmetric; i++) {
        struct stats_metric *stm = FUNC1(stats_metric, i);

        FUNC3(stm);
    }
}