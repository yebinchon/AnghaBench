#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_5__* value; } ;
typedef  TYPE_2__ listNode ;
struct TYPE_21__ {int flags; int /*<<< orphan*/  argc; scalar_t__ argv; } ;
typedef  TYPE_3__ client ;
struct TYPE_23__ {TYPE_1__* module; int /*<<< orphan*/ * disconnect_callback; int /*<<< orphan*/  reply_client; scalar_t__ privdata; int /*<<< orphan*/  (* free_privdata ) (TYPE_4__*,scalar_t__) ;TYPE_3__* client; int /*<<< orphan*/  (* reply_callback ) (TYPE_4__*,void**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  blocked_on_keys; } ;
struct TYPE_22__ {TYPE_3__* client; TYPE_1__* module; scalar_t__ blocked_privdata; int /*<<< orphan*/  flags; TYPE_5__* blocked_client; int /*<<< orphan*/ * blocked_ready_key; } ;
struct TYPE_19__ {int /*<<< orphan*/  blocked_clients; } ;
struct TYPE_18__ {int /*<<< orphan*/  clients_pending_write; int /*<<< orphan*/ * module_blocked_pipe; } ;
typedef  TYPE_4__ RedisModuleCtx ;
typedef  TYPE_5__ RedisModuleBlockedClient ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int CLIENT_PENDING_WRITE ; 
 int /*<<< orphan*/  REDISMODULE_CTX_BLOCKED_DISCONNECTED ; 
 int /*<<< orphan*/  REDISMODULE_CTX_BLOCKED_REPLY ; 
 TYPE_4__ REDISMODULE_CTX_INIT ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  moduleUnblockedClients ; 
 int /*<<< orphan*/  moduleUnblockedClientsMutex ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_10__ server ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 

void FUNC15(void) {
    listNode *ln;
    RedisModuleBlockedClient *bc;

    FUNC8(&moduleUnblockedClientsMutex);
    /* Here we unblock all the pending clients blocked in modules operations
     * so we can read every pending "awake byte" in the pipe. */
    char buf[1];
    while (FUNC10(server.module_blocked_pipe[0],buf,1) == 1);
    while (FUNC6(moduleUnblockedClients)) {
        ln = FUNC5(moduleUnblockedClients);
        bc = ln->value;
        client *c = bc->client;
        FUNC4(moduleUnblockedClients,ln);
        FUNC9(&moduleUnblockedClientsMutex);

        /* Release the lock during the loop, as long as we don't
         * touch the shared list. */

        /* Call the reply callback if the client is valid and we have
         * any callback. However the callback is not called if the client
         * was blocked on keys (RM_BlockClientOnKeys()), because we already
         * called such callback in moduleTryServeClientBlockedOnKey() when
         * the key was signaled as ready. */
        if (c && !bc->blocked_on_keys && bc->reply_callback) {
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
            ctx.flags |= REDISMODULE_CTX_BLOCKED_REPLY;
            ctx.blocked_privdata = bc->privdata;
            ctx.blocked_ready_key = NULL;
            ctx.module = bc->module;
            ctx.client = bc->client;
            ctx.blocked_client = bc;
            bc->reply_callback(&ctx,(void**)c->argv,c->argc);
            FUNC7(&ctx);
        }

        /* Free privdata if any. */
        if (bc->privdata && bc->free_privdata) {
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
            if (c == NULL)
                ctx.flags |= REDISMODULE_CTX_BLOCKED_DISCONNECTED;
            ctx.blocked_privdata = bc->privdata;
            ctx.module = bc->module;
            ctx.client = bc->client;
            bc->free_privdata(&ctx,bc->privdata);
            FUNC7(&ctx);
        }

        /* It is possible that this blocked client object accumulated
         * replies to send to the client in a thread safe context.
         * We need to glue such replies to the client output buffer and
         * free the temporary client we just used for the replies. */
        if (c) FUNC0(c, bc->reply_client);
        FUNC2(bc->reply_client);

        if (c != NULL) {
            /* Before unblocking the client, set the disconnect callback
             * to NULL, because if we reached this point, the client was
             * properly unblocked by the module. */
            bc->disconnect_callback = NULL;
            FUNC13(c);
            /* Put the client in the list of clients that need to write
             * if there are pending replies here. This is needed since
             * during a non blocking command the client may receive output. */
            if (FUNC1(c) &&
                !(c->flags & CLIENT_PENDING_WRITE))
            {
                c->flags |= CLIENT_PENDING_WRITE;
                FUNC3(server.clients_pending_write,c);
            }
        }

        /* Free 'bc' only after unblocking the client, since it is
         * referenced in the client blocking context, and must be valid
         * when calling unblockClient(). */
        bc->module->blocked_clients--;
        FUNC14(bc);

        /* Lock again before to iterate the loop. */
        FUNC8(&moduleUnblockedClientsMutex);
    }
    FUNC9(&moduleUnblockedClientsMutex);
}