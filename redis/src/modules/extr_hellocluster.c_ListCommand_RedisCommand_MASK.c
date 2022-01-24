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
 int /*<<< orphan*/  REDISMODULE_NODE_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REDISMODULE_OK ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 char** FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC8(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    FUNC0(argv);
    FUNC0(argc);

    size_t numnodes;
    char **ids = FUNC3(ctx,&numnodes);
    if (ids == NULL) {
        return FUNC5(ctx,"Cluster not enabled");
    }

    FUNC4(ctx,numnodes);
    for (size_t j = 0; j < numnodes; j++) {
        int port;
        FUNC2(ctx,ids[j],NULL,NULL,&port,NULL);
        FUNC4(ctx,2);
        FUNC7(ctx,ids[j],REDISMODULE_NODE_ID_LEN);
        FUNC6(ctx,port);
    }
    FUNC1(ids);
    return REDISMODULE_OK;
}