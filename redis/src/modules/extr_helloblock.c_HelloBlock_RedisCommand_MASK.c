#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;
typedef  int /*<<< orphan*/  RedisModuleBlockedClient ;

/* Variables and functions */
 int /*<<< orphan*/  HelloBlock_Disconnected ; 
 int /*<<< orphan*/  HelloBlock_FreeData ; 
 int /*<<< orphan*/  HelloBlock_Reply ; 
 int /*<<< orphan*/  HelloBlock_ThreadMain ; 
 int /*<<< orphan*/  HelloBlock_Timeout ; 
 scalar_t__ REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void** FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,long long*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 

int FUNC8(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    if (argc != 3) return FUNC6(ctx);
    long long delay;
    long long timeout;

    if (FUNC5(argv[1],&delay) != REDISMODULE_OK) {
        return FUNC3(ctx,"ERR invalid count");
    }

    if (FUNC5(argv[2],&timeout) != REDISMODULE_OK) {
        return FUNC3(ctx,"ERR invalid count");
    }

    pthread_t tid;
    RedisModuleBlockedClient *bc = FUNC2(ctx,HelloBlock_Reply,HelloBlock_Timeout,HelloBlock_FreeData,timeout);

    /* Here we set a disconnection handler, however since this module will
     * block in sleep() in a thread, there is not much we can do in the
     * callback, so this is just to show you the API. */
    FUNC4(bc,HelloBlock_Disconnected);

    /* Now that we setup a blocking client, we need to pass the control
     * to the thread. However we need to pass arguments to the thread:
     * the delay and a reference to the blocked client handle. */
    void **targ = FUNC1(sizeof(void*)*2);
    targ[0] = bc;
    targ[1] = (void*)(unsigned long) delay;

    if (FUNC7(&tid,NULL,HelloBlock_ThreadMain,targ) != 0) {
        FUNC0(bc);
        return FUNC3(ctx,"-ERR Can't start thread");
    }
    return REDISMODULE_OK;
}