#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  desc; scalar_t__ riid; } ;
typedef  TYPE_1__ const cpc_entry_t ;
struct TYPE_6__ {int /*<<< orphan*/ * cps; TYPE_1__ const* cp_entries; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  TYPE_2__ ConnectionPointContainer ;
typedef  int /*<<< orphan*/  ConnectionPoint ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static ConnectionPoint *FUNC3(ConnectionPointContainer *container, REFIID riid, BOOL do_create)
{
    const cpc_entry_t *iter;
    unsigned idx, i;

    for(iter = container->cp_entries; iter->riid; iter++) {
        if(FUNC1(iter->riid, riid))
            break;
    }
    if(!iter->riid)
        return NULL;
    idx = iter - container->cp_entries;

    if(!container->cps) {
        if(!do_create)
            return NULL;

        while(iter->riid)
            iter++;
        container->cps = FUNC2((iter - container->cp_entries) * sizeof(*container->cps));
        if(!container->cps)
            return NULL;

        for(i=0; container->cp_entries[i].riid; i++)
            FUNC0(container->cps+i, container, container->cp_entries[i].riid, container->cp_entries[i].desc);
    }

    return container->cps+idx;
}