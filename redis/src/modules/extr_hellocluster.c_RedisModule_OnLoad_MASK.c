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
typedef  int /*<<< orphan*/  RedisModuleString ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int /*<<< orphan*/  ListCommand_RedisCommand ; 
 int /*<<< orphan*/  MSGTYPE_PING ; 
 int /*<<< orphan*/  MSGTYPE_PONG ; 
 int /*<<< orphan*/  PingReceiver ; 
 int /*<<< orphan*/  PingallCommand_RedisCommand ; 
 int /*<<< orphan*/  PongReceiver ; 
 int /*<<< orphan*/  REDISMODULE_APIVER_1 ; 
 int /*<<< orphan*/  REDISMODULE_CLUSTER_FLAG_NO_REDIRECTION ; 
 scalar_t__ REDISMODULE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    if (FUNC2(ctx,"hellocluster",1,REDISMODULE_APIVER_1)
        == REDISMODULE_ERR) return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellocluster.pingall",
        PingallCommand_RedisCommand,"readonly",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    if (FUNC1(ctx,"hellocluster.list",
        ListCommand_RedisCommand,"readonly",0,0,0) == REDISMODULE_ERR)
        return REDISMODULE_ERR;

    /* Disable Redis Cluster sharding and redirections. This way every node
     * will be able to access every possible key, regardless of the hash slot.
     * This way the PING message handler will be able to increment a specific
     * variable. Normally you do that in order for the distributed system
     * you create as a module to have total freedom in the keyspace
     * manipulation. */
    FUNC4(ctx,REDISMODULE_CLUSTER_FLAG_NO_REDIRECTION);

    /* Register our handlers for different message types. */
    FUNC3(ctx,MSGTYPE_PING,PingReceiver);
    FUNC3(ctx,MSGTYPE_PONG,PongReceiver);
    return REDISMODULE_OK;
}