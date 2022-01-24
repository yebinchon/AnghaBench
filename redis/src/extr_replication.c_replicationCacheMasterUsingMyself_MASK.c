#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* master; TYPE_1__* cached_master; int /*<<< orphan*/  replid; int /*<<< orphan*/  master_repl_offset; int /*<<< orphan*/  master_initial_offset; } ;
struct TYPE_3__ {int /*<<< orphan*/  replid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(void) {
    /* The master client we create can be set to any DBID, because
     * the new master will start its replication stream with SELECT. */
    server.master_initial_offset = server.master_repl_offset;
    FUNC1(NULL,-1);

    /* Use our own ID / offset. */
    FUNC0(server.master->replid, server.replid, sizeof(server.replid));

    /* Set as cached master. */
    FUNC3(server.master);
    server.cached_master = server.master;
    server.master = NULL;
    FUNC2(LL_NOTICE,"Before turning into a replica, using my master parameters to synthesize a cached master: I may be able to synchronize with the new master with just a partial transfer.");
}