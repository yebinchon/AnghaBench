#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ttl; int enabled_capabilities; int capability_mask; scalar_t__ has_capabilities; int /*<<< orphan*/  source_address; int /*<<< orphan*/  filter_address; } ;
typedef  TYPE_1__ sd_lldp_neighbor ;
typedef  TYPE_1__ sd_lldp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(sd_lldp *lldp, sd_lldp_neighbor *n) {
        FUNC0(lldp);
        FUNC0(n);

        /* Don't keep data with a zero TTL */
        if (n->ttl <= 0)
                return false;

        /* Filter out data from the filter address */
        if (!FUNC2(&lldp->filter_address) &&
            FUNC1(&lldp->filter_address, &n->source_address))
                return false;

        /* Only add if the neighbor has a capability we are interested in. Note that we also store all neighbors with
         * no caps field set. */
        if (n->has_capabilities &&
            (n->enabled_capabilities & lldp->capability_mask) == 0)
                return false;

        /* Keep everything else */
        return true;
}