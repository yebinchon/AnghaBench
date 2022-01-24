#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_10__ {int /*<<< orphan*/  client; int /*<<< orphan*/  module; } ;
struct TYPE_9__ {int event_mask; int active; int /*<<< orphan*/  (* notify_callback ) (TYPE_3__*,int,char const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  module; } ;
typedef  TYPE_2__ RedisModuleKeyspaceSubscriber ;
typedef  TYPE_3__ RedisModuleCtx ;

/* Variables and functions */
 int NOTIFY_KEYEVENT ; 
 int NOTIFY_KEYSPACE ; 
 TYPE_3__ REDISMODULE_CTX_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  moduleFreeContextReusedClient ; 
 int /*<<< orphan*/  moduleKeyspaceSubscribers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,char const*,int /*<<< orphan*/ *) ; 

void FUNC6(int type, const char *event, robj *key, int dbid) {
    /* Don't do anything if there aren't any subscribers */
    if (FUNC0(moduleKeyspaceSubscribers) == 0) return;

    listIter li;
    listNode *ln;
    FUNC2(moduleKeyspaceSubscribers,&li);

    /* Remove irrelevant flags from the type mask */
    type &= ~(NOTIFY_KEYEVENT | NOTIFY_KEYSPACE);

    while((ln = FUNC1(&li))) {
        RedisModuleKeyspaceSubscriber *sub = ln->value;
        /* Only notify subscribers on events matching they registration,
         * and avoid subscribers triggering themselves */
        if ((sub->event_mask & type) && sub->active == 0) {
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;
            ctx.module = sub->module;
            ctx.client = moduleFreeContextReusedClient;
            FUNC4(ctx.client, dbid);

            /* mark the handler as active to avoid reentrant loops.
             * If the subscriber performs an action triggering itself,
             * it will not be notified about it. */
            sub->active = 1;
            sub->notify_callback(&ctx, type, event, key);
            sub->active = 0;
            FUNC3(&ctx);
        }
    }
}