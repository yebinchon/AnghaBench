#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  repl_ack_time; scalar_t__ repl_put_online_on_ack; int /*<<< orphan*/  replstate; } ;
typedef  TYPE_1__ client ;
struct TYPE_7__ {int /*<<< orphan*/  unixtime; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  REDISMODULE_EVENT_REPLICA_CHANGE ; 
 int /*<<< orphan*/  REDISMODULE_SUBEVENT_REPLICA_CHANGE_ONLINE ; 
 int /*<<< orphan*/  SLAVE_STATE_ONLINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  sendReplyToClient ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(client *slave) {
    slave->replstate = SLAVE_STATE_ONLINE;
    slave->repl_put_online_on_ack = 0;
    slave->repl_ack_time = server.unixtime; /* Prevent false timeout. */
    if (FUNC0(slave->conn, sendReplyToClient) == C_ERR) {
        FUNC5(LL_WARNING,"Unable to register writable event for replica bulk transfer: %s", FUNC6(errno));
        FUNC1(slave);
        return;
    }
    FUNC3();
    /* Fire the replica change modules event. */
    FUNC2(REDISMODULE_EVENT_REPLICA_CHANGE,
                          REDISMODULE_SUBEVENT_REPLICA_CHANGE_ONLINE,
                          NULL);
    FUNC5(LL_NOTICE,"Synchronization with replica %s succeeded",
        FUNC4(slave));
}