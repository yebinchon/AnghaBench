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
typedef  size_t uint32_t ;
struct stats_metric {int dummy; } ;
struct array {int dummy; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 scalar_t__ NC_OK ; 
 size_t STATS_POOL_NFIELD ; 
 scalar_t__ FUNC0 (struct array*,size_t,int) ; 
 struct stats_metric* FUNC1 (struct array*) ; 
 int /*<<< orphan*/  FUNC2 (struct stats_metric*) ; 
 struct stats_metric* stats_pool_codec ; 

__attribute__((used)) static rstatus_t
FUNC3(struct array *stats_metric)
{
    rstatus_t status;
    uint32_t i, nfield = STATS_POOL_NFIELD;

    status = FUNC0(stats_metric, nfield, sizeof(struct stats_metric));
    if (status != NC_OK) {
        return status;
    }

    for (i = 0; i < nfield; i++) {
        struct stats_metric *stm = FUNC1(stats_metric);

        /* initialize from pool codec first */
        *stm = stats_pool_codec[i];

        /* initialize individual metric */
        FUNC2(stm);
    }

    return NC_OK;
}