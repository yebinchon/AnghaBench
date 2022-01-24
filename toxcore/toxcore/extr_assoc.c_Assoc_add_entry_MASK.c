#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ hash_t ;
struct TYPE_13__ {scalar_t__ self_hash; int /*<<< orphan*/  self_client_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  const ip_port; } ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  TYPE_1__ IPPTs ;
typedef  int /*<<< orphan*/  Client_entry ;
typedef  TYPE_2__ Assoc ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__,int const*,int,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int const*,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

uint8_t FUNC7(Assoc *assoc, const uint8_t *id, const IPPTs *ippts_send, const IP_Port *ipp_recv, uint8_t used)
{
    if (!assoc || !id || !ippts_send)
        return 0;

    if (!assoc->self_hash) {
        FUNC3(assoc);

        if (!assoc->self_hash)
            return 0;
    }

    if (!FUNC6(&ippts_send->ip_port))
        return 0;

    if (ipp_recv && !FUNC6(ipp_recv))
        ipp_recv = NULL;

    hash_t hash = FUNC5(assoc, id);

    if (hash == assoc->self_hash)
        if (FUNC4(id, assoc->self_client_id))
            return 0;

    /* if it's new:
     * callback, if there's desire, add to clients, else to candidates
     *
     * if it's "old":
     *    if it's client: refresh
     *    if it's candidate:
     *       if !ipp_recv, refresh
     *       if ipp_recv: callback, if there's desire, move to candidates
     */
    Client_entry *cnd_entry;

    if (!FUNC1(assoc, id, hash, &cnd_entry)) {
        if (FUNC0(assoc, hash, id, used, ippts_send, ipp_recv))
            return 1;
        else
            return 0;
    } else {
        FUNC2(assoc, cnd_entry, used, ippts_send, ipp_recv);
        return 2;
    }
}