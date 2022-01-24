#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct aeEventLoop {int dummy; } ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_2__ {int /*<<< orphan*/  unblocked_clients; int /*<<< orphan*/  clients_waiting_acks; scalar_t__ get_ack_from_slaves; int /*<<< orphan*/  slaveseldb; int /*<<< orphan*/  slaves; int /*<<< orphan*/ * masterhost; scalar_t__ active_expire_enabled; scalar_t__ cluster_enabled; int /*<<< orphan*/  el; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_EXPIRE_CYCLE_FAST ; 
 int /*<<< orphan*/  FUNC0 (struct aeEventLoop*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

void FUNC18(struct aeEventLoop *eventLoop) {
    FUNC0(eventLoop);

    /* Handle TLS pending data. (must be done before flushAppendOnlyFile) */
    FUNC17();
    /* If tls still has pending unread data don't sleep at all. */
    FUNC2(server.el, FUNC16());

    /* Call the Redis Cluster before sleep function. Note that this function
     * may change the state of Redis Cluster (from ok to fail or vice versa),
     * so it's a good idea to call it before serving the unblocked clients
     * later in this function. */
    if (server.cluster_enabled) FUNC3();

    /* Run a fast expire cycle (the called function will return
     * ASAP if a fast cycle is not needed). */
    if (server.active_expire_enabled && server.masterhost == NULL)
        FUNC1(ACTIVE_EXPIRE_CYCLE_FAST);

    /* Send all the slaves an ACK request if at least one client blocked
     * during the previous event loop iteration. */
    if (server.get_ack_from_slaves) {
        robj *argv[3];

        argv[0] = FUNC4("REPLCONF",8);
        argv[1] = FUNC4("GETACK",6);
        argv[2] = FUNC4("*",1); /* Not used argument. */
        FUNC15(server.slaves, server.slaveseldb, argv, 3);
        FUNC5(argv[0]);
        FUNC5(argv[1]);
        FUNC5(argv[2]);
        server.get_ack_from_slaves = 0;
    }

    /* Unblock all the clients blocked for synchronous replication
     * in WAIT. */
    if (FUNC9(server.clients_waiting_acks))
        FUNC13();

    /* Check if there are clients unblocked by modules that implement
     * blocking commands. */
    if (FUNC10()) FUNC11();

    /* Try to process pending commands for clients that were just unblocked. */
    if (FUNC9(server.unblocked_clients))
        FUNC14();

    /* Write the AOF buffer on disk */
    FUNC6(0);

    /* Handle writes with pending output buffers. */
    FUNC8();

    /* Close clients that need to be closed asynchronous */
    FUNC7();

    /* Before we are going to sleep, let the threads access the dataset by
     * releasing the GIL. Redis main thread will not touch anything at this
     * time. */
    if (FUNC10()) FUNC12();
}