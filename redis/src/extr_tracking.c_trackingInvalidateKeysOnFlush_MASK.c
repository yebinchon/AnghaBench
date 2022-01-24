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
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ tracking_clients; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int CLIENT_TRACKING ; 
 int TRACKING_TABLE_SIZE ; 
 int /*<<< orphan*/ ** TrackingTable ; 
 scalar_t__ TrackingTableUsedSlots ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 

void FUNC6(int dbid) {
    if (server.tracking_clients) {
        listNode *ln;
        listIter li;
        FUNC2(server.clients,&li);
        while ((ln = FUNC0(&li)) != NULL) {
            client *c = FUNC1(ln);
            if (c->flags & CLIENT_TRACKING) {
                FUNC4(c,-1);
            }
        }
    }

    /* In case of FLUSHALL, reclaim all the memory used by tracking. */
    if (dbid == -1 && TrackingTable) {
        for (int j = 0; j < TRACKING_TABLE_SIZE && TrackingTableUsedSlots > 0; j++) {
            if (TrackingTable[j] != NULL) {
                FUNC3(TrackingTable[j]);
                TrackingTable[j] = NULL;
                TrackingTableUsedSlots--;
            }
        }

        /* If there are no clients with tracking enabled, we can even
         * reclaim the memory used by the table itself. The code assumes
         * the table is allocated only if there is at least one client alive
         * with tracking enabled. */
        if (server.tracking_clients == 0) {
            FUNC5(TrackingTable);
            TrackingTable = NULL;
        }
    }
}