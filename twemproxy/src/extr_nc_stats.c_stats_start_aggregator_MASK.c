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
struct stats {int /*<<< orphan*/  tid; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 scalar_t__ NC_ERROR ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct stats*) ; 
 int /*<<< orphan*/  stats_enabled ; 
 scalar_t__ FUNC2 (struct stats*) ; 
 int /*<<< orphan*/  stats_loop ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static rstatus_t
FUNC4(struct stats *st)
{
    rstatus_t status;

    if (!stats_enabled) {
        return NC_OK;
    }

    status = FUNC2(st);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC1(&st->tid, NULL, stats_loop, st);
    if (status < 0) {
        FUNC0("stats aggregator create failed: %s", FUNC3(status));
        return NC_ERROR;
    }

    return NC_OK;
}