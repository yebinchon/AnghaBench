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
struct stats_server {int /*<<< orphan*/  metric; int /*<<< orphan*/  name; } ;
struct stats_pool {int /*<<< orphan*/  server; int /*<<< orphan*/  metric; int /*<<< orphan*/  name; } ;
struct stats {int /*<<< orphan*/  sum; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 scalar_t__ NC_OK ; 
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct stats*) ; 
 scalar_t__ FUNC3 (struct stats*) ; 
 scalar_t__ FUNC4 (struct stats*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct stats*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct stats*) ; 

__attribute__((used)) static rstatus_t
FUNC7(struct stats *st)
{
    rstatus_t status;
    uint32_t i;

    status = FUNC3(st);
    if (status != NC_OK) {
        return status;
    }

    for (i = 0; i < FUNC1(&st->sum); i++) {
        struct stats_pool *stp = FUNC0(&st->sum, i);
        uint32_t j;

        status = FUNC4(st, &stp->name);
        if (status != NC_OK) {
            return status;
        }

        /* copy pool metric from sum(c) to buffer */
        status = FUNC5(st, &stp->metric);
        if (status != NC_OK) {
            return status;
        }

        for (j = 0; j < FUNC1(&stp->server); j++) {
            struct stats_server *sts = FUNC0(&stp->server, j);

            status = FUNC4(st, &sts->name);
            if (status != NC_OK) {
                return status;
            }

            /* copy server metric from sum(c) to buffer */
            status = FUNC5(st, &sts->metric);
            if (status != NC_OK) {
                return status;
            }

            status = FUNC6(st);
            if (status != NC_OK) {
                return status;
            }
        }

        status = FUNC6(st);
        if (status != NC_OK) {
            return status;
        }
    }

    status = FUNC2(st);
    if (status != NC_OK) {
        return status;
    }

    return NC_OK;
}