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
struct TYPE_6__ {int clients_paused; scalar_t__ clients_pause_end_time; scalar_t__ mstime; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int CLIENT_BLOCKED ; 
 int CLIENT_SLAVE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__ server ; 

int FUNC4(void) {
    if (server.clients_paused &&
        server.clients_pause_end_time < server.mstime)
    {
        listNode *ln;
        listIter li;
        client *c;

        server.clients_paused = 0;

        /* Put all the clients in the unblocked clients queue in order to
         * force the re-processing of the input buffer if any. */
        FUNC2(server.clients,&li);
        while ((ln = FUNC0(&li)) != NULL) {
            c = FUNC1(ln);

            /* Don't touch slaves and blocked clients.
             * The latter pending requests will be processed when unblocked. */
            if (c->flags & (CLIENT_SLAVE|CLIENT_BLOCKED)) continue;
            FUNC3(c);
        }
    }
    return server.clients_paused;
}