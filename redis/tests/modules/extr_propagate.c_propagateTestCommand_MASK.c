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
typedef  int pthread_t ;
typedef  int RedisModuleTimerID ;
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  threadMain ; 
 int /*<<< orphan*/  timerHandler ; 

int FUNC5(RedisModuleCtx *ctx, RedisModuleString **argv, int argc)
{
    FUNC0(argv);
    FUNC0(argc);

    RedisModuleTimerID timer_id =
        FUNC1(ctx,100,timerHandler,NULL);
    FUNC0(timer_id);

    pthread_t tid;
    if (FUNC4(&tid,NULL,threadMain,NULL) != 0)
        return FUNC2(ctx,"-ERR Can't start thread");
    FUNC0(tid);

    FUNC3(ctx,"OK");
    return REDISMODULE_OK;
}