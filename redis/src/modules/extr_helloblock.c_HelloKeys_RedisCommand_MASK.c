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
 int /*<<< orphan*/  HelloKeys_ThreadMain ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    if (argc != 1) return FUNC4(ctx);

    pthread_t tid;

    /* Note that when blocking the client we do not set any callback: no
     * timeout is possible since we passed '0', nor we need a reply callback
     * because we'll use the thread safe context to accumulate a reply. */
    RedisModuleBlockedClient *bc = FUNC2(ctx,NULL,NULL,NULL,0);

    /* Now that we setup a blocking client, we need to pass the control
     * to the thread. However we need to pass arguments to the thread:
     * the reference to the blocked client handle. */
    if (FUNC5(&tid,NULL,HelloKeys_ThreadMain,bc) != 0) {
        FUNC1(bc);
        return FUNC3(ctx,"-ERR Can't start thread");
    }
    return REDISMODULE_OK;
}