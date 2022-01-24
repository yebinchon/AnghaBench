#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ raxIterator ;
struct TYPE_10__ {int flags; } ;
typedef  TYPE_2__ client ;

/* Variables and functions */
 int CLIENT_TRACKING ; 
 int /*<<< orphan*/ ** TrackingTable ; 
 int /*<<< orphan*/  TrackingTableUsedSlots ; 
 TYPE_2__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,size_t) ; 

void FUNC8(uint64_t slot) {
    if (TrackingTable == NULL || TrackingTable[slot] == NULL) return;

    raxIterator ri;
    FUNC5(&ri,TrackingTable[slot]);
    FUNC4(&ri,"^",NULL,0);
    while(FUNC3(&ri)) {
        uint64_t id;
        FUNC1(&id,ri.key,ri.key_len);
        client *c = FUNC0(id);
        if (c == NULL || !(c->flags & CLIENT_TRACKING)) continue;
        FUNC7(c,slot);
    }
    FUNC6(&ri);

    /* Free the tracking table: we'll create the radix tree and populate it
     * again if more keys will be modified in this caching slot. */
    FUNC2(TrackingTable[slot]);
    TrackingTable[slot] = NULL;
    TrackingTableUsedSlots--;
}