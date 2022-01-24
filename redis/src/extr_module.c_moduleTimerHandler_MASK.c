#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  void aeEventLoop ;
struct TYPE_12__ {int /*<<< orphan*/  key_len; scalar_t__ key; TYPE_2__* data; } ;
typedef  TYPE_1__ raxIterator ;
typedef  int /*<<< orphan*/  expiretime ;
struct TYPE_14__ {int /*<<< orphan*/  client; int /*<<< orphan*/  module; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* callback ) (TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dbid; int /*<<< orphan*/  module; } ;
typedef  TYPE_2__ RedisModuleTimer ;
typedef  TYPE_3__ RedisModuleCtx ;

/* Variables and functions */
 int AE_NOMORE ; 
 TYPE_3__ REDISMODULE_CTX_INIT ; 
 int /*<<< orphan*/  Timers ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  moduleFreeContextReusedClient ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

int FUNC14(struct aeEventLoop *eventLoop, long long id, void *clientData) {
    FUNC0(eventLoop);
    FUNC0(id);
    FUNC0(clientData);

    /* To start let's try to fire all the timers already expired. */
    raxIterator ri;
    FUNC8(&ri,Timers);
    uint64_t now = FUNC12();
    long long next_period = 0;
    while(1) {
        FUNC6(&ri,"^",NULL,0);
        if (!FUNC4(&ri)) break;
        uint64_t expiretime;
        FUNC1(&expiretime,ri.key,sizeof(expiretime));
        expiretime = FUNC3(expiretime);
        if (now >= expiretime) {
            RedisModuleTimer *timer = ri.data;
            RedisModuleCtx ctx = REDISMODULE_CTX_INIT;

            ctx.module = timer->module;
            ctx.client = moduleFreeContextReusedClient;
            FUNC10(ctx.client, timer->dbid);
            timer->callback(&ctx,timer->data);
            FUNC2(&ctx);
            FUNC5(Timers,(unsigned char*)ri.key,ri.key_len,NULL);
            FUNC13(timer);
        } else {
            next_period = (expiretime-now)/1000; /* Scale to milliseconds. */
            break;
        }
    }
    FUNC9(&ri);

    /* Reschedule the next timer or cancel it. */
    if (next_period <= 0) next_period = 1;
    return (FUNC7(Timers) > 0) ? next_period : AE_NOMORE;
}