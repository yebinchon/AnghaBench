#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_11__ {int flags; TYPE_6__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_14__ {char* ptr; } ;
struct TYPE_13__ {char* masterhost; scalar_t__ aof_state; long masterport; scalar_t__ aof_enabled; scalar_t__ cluster_enabled; } ;
struct TYPE_12__ {int /*<<< orphan*/  ok; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int CLIENT_SLAVE ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_6__*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__ shared ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

void FUNC13(client *c) {
    /* SLAVEOF is not allowed in cluster mode as replication is automatically
     * configured using the current address of the master node. */
    if (server.cluster_enabled) {
        FUNC1(c,"REPLICAOF not allowed in cluster mode.");
        return;
    }

    /* The special host/port combination "NO" "ONE" turns the instance
     * into a master. Otherwise the new master address is set. */
    if (!FUNC12(c->argv[1]->ptr,"no") &&
        !FUNC12(c->argv[2]->ptr,"one")) {
        if (server.masterhost) {
            FUNC6();
            sds client = FUNC3(FUNC8(),c);
            FUNC11(LL_NOTICE,"MASTER MODE enabled (user request from '%s')",
                client);
            FUNC9(client);
            /* Restart the AOF subsystem in case we shut it down during a sync when
             * we were still a slave. */
            if (server.aof_enabled && server.aof_state == AOF_OFF) FUNC7();
        }
    } else {
        long port;

        if (c->flags & CLIENT_SLAVE)
        {
            /* If a client is already a replica they cannot run this command,
             * because it involves flushing all replicas (including this
             * client) */
            FUNC1(c, "Command is not valid when client is a replica.");
            return;
        }

        if ((FUNC4(c, c->argv[2], &port, NULL) != C_OK))
            return;

        /* Check if we are already attached to the specified slave */
        if (server.masterhost && !FUNC12(server.masterhost,c->argv[1]->ptr)
            && server.masterport == port) {
            FUNC11(LL_NOTICE,"REPLICAOF would result into synchronization "
                                "with the master we are already connected "
                                "with. No operation performed.");
            FUNC2(c,FUNC10("+OK Already connected to specified "
                                 "master\r\n"));
            return;
        }
        /* There was no previous master or the user specified a different one,
         * we can continue. */
        FUNC5(c->argv[1]->ptr, port);
        sds client = FUNC3(FUNC8(),c);
        FUNC11(LL_NOTICE,"REPLICAOF %s:%d enabled (user request from '%s')",
            server.masterhost, server.masterport, client);
        FUNC9(client);
    }
    FUNC0(c,shared.ok);
}