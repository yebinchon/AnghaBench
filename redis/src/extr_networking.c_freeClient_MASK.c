#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_18__ {int /*<<< orphan*/  keys; } ;
struct TYPE_19__ {int flags; scalar_t__ replstate; int repldbfd; int /*<<< orphan*/ * peerid; struct TYPE_19__* argv; scalar_t__ name; int /*<<< orphan*/ * replpreamble; int /*<<< orphan*/  reply; int /*<<< orphan*/  pubsub_patterns; int /*<<< orphan*/  pubsub_channels; int /*<<< orphan*/  watched_keys; TYPE_1__ bpop; int /*<<< orphan*/ * querybuf; int /*<<< orphan*/ * pending_querybuf; scalar_t__ conn; } ;
typedef  TYPE_2__ client ;
struct TYPE_20__ {int /*<<< orphan*/ * clients_to_close; int /*<<< orphan*/  unixtime; int /*<<< orphan*/  repl_no_slaves_since; int /*<<< orphan*/ * slaves; int /*<<< orphan*/ * monitors; scalar_t__ master; } ;

/* Variables and functions */
 int CLIENT_BLOCKED ; 
 int CLIENT_CLOSE_AFTER_REPLY ; 
 int CLIENT_CLOSE_ASAP ; 
 int CLIENT_MASTER ; 
 int CLIENT_MONITOR ; 
 int CLIENT_PROTECTED ; 
 int CLIENT_SLAVE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  REDISMODULE_EVENT_CLIENT_CHANGE ; 
 int /*<<< orphan*/  REDISMODULE_EVENT_REPLICA_CHANGE ; 
 int /*<<< orphan*/  REDISMODULE_SUBEVENT_CLIENT_CHANGE_DISCONNECTED ; 
 int /*<<< orphan*/  REDISMODULE_SUBEVENT_REPLICA_CHANGE_OFFLINE ; 
 scalar_t__ SLAVE_STATE_ONLINE ; 
 scalar_t__ SLAVE_STATE_SEND_BULK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 

void FUNC24(client *c) {
    listNode *ln;

    /* If a client is protected, yet we need to free it right now, make sure
     * to at least use asynchronous freeing. */
    if (c->flags & CLIENT_PROTECTED) {
        FUNC4(c);
        return;
    }

    /* For connected clients, call the disconnection event of modules hooks. */
    if (c->conn) {
        FUNC10(REDISMODULE_EVENT_CLIENT_CHANGE,
                              REDISMODULE_SUBEVENT_CLIENT_CHANGE_DISCONNECTED,
                              c);
    }

    /* If it is our master that's beging disconnected we should make sure
     * to cache the state to try a partial resynchronization later.
     *
     * Note that before doing this we make sure that the client is not in
     * some unexpected state, by checking its flags. */
    if (server.master && c->flags & CLIENT_MASTER) {
        FUNC19(LL_WARNING,"Connection with master lost.");
        if (!(c->flags & (CLIENT_CLOSE_AFTER_REPLY|
                          CLIENT_CLOSE_ASAP|
                          CLIENT_BLOCKED)))
        {
            FUNC14(c);
            return;
        }
    }

    /* Log link disconnection with slave */
    if ((c->flags & CLIENT_SLAVE) && !(c->flags & CLIENT_MONITOR)) {
        FUNC19(LL_WARNING,"Connection with replica %s lost.",
            FUNC15(c));
    }

    /* Free the query buffer */
    FUNC17(c->querybuf);
    FUNC17(c->pending_querybuf);
    c->querybuf = NULL;

    /* Deallocate structures used to block on blocking ops. */
    if (c->flags & CLIENT_BLOCKED) FUNC20(c);
    FUNC2(c->bpop.keys);

    /* UNWATCH all the keys */
    FUNC22(c);
    FUNC8(c->watched_keys);

    /* Unsubscribe from all the pubsub channels */
    FUNC11(c,0);
    FUNC12(c,0);
    FUNC2(c->pubsub_channels);
    FUNC8(c->pubsub_patterns);

    /* Free data structures. */
    FUNC8(c->reply);
    FUNC3(c);

    /* Unlink the client: this will close the socket, remove the I/O
     * handlers, and remove references of the client from different
     * places where active clients may be referenced. */
    FUNC21(c);

    /* Master/slave cleanup Case 1:
     * we lost the connection with a slave. */
    if (c->flags & CLIENT_SLAVE) {
        if (c->replstate == SLAVE_STATE_SEND_BULK) {
            if (c->repldbfd != -1) FUNC0(c->repldbfd);
            if (c->replpreamble) FUNC17(c->replpreamble);
        }
        list *l = (c->flags & CLIENT_MONITOR) ? server.monitors : server.slaves;
        ln = FUNC9(l,c);
        FUNC18(ln != NULL);
        FUNC6(l,ln);
        /* We need to remember the time when we started to have zero
         * attached slaves, as after some time we'll free the replication
         * backlog. */
        if (c->flags & CLIENT_SLAVE && FUNC7(server.slaves) == 0)
            server.repl_no_slaves_since = server.unixtime;
        FUNC13();
        /* Fire the replica change modules event. */
        if (c->replstate == SLAVE_STATE_ONLINE)
            FUNC10(REDISMODULE_EVENT_REPLICA_CHANGE,
                                  REDISMODULE_SUBEVENT_REPLICA_CHANGE_OFFLINE,
                                  NULL);
    }

    /* Master/slave cleanup Case 2:
     * we lost the connection with the master. */
    if (c->flags & CLIENT_MASTER) FUNC16();

    /* If this client was scheduled for async freeing we need to remove it
     * from the queue. */
    if (c->flags & CLIENT_CLOSE_ASAP) {
        ln = FUNC9(server.clients_to_close,c);
        FUNC18(ln != NULL);
        FUNC6(server.clients_to_close,ln);
    }

    /* Release other dynamically allocated client structure fields,
     * and finally release the client structure itself. */
    if (c->name) FUNC1(c->name);
    FUNC23(c->argv);
    FUNC5(c);
    FUNC17(c->peerid);
    FUNC23(c);
}