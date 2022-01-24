#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_7__ {TYPE_1__* cluster; int /*<<< orphan*/  cluster_enabled; } ;
struct TYPE_5__ {int /*<<< orphan*/  nodes; } ;
typedef  int /*<<< orphan*/  RedisModuleCtx ;

/* Variables and functions */
 int CLUSTER_NODE_HANDSHAKE ; 
 int CLUSTER_NODE_NOADDR ; 
 size_t REDISMODULE_NODE_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_3__ server ; 
 void* FUNC7 (size_t) ; 

char **FUNC8(RedisModuleCtx *ctx, size_t *numnodes) {
    FUNC0(ctx);

    if (!server.cluster_enabled) return NULL;
    size_t count = FUNC5(server.cluster->nodes);
    char **ids = FUNC7((count+1)*REDISMODULE_NODE_ID_LEN);
    dictIterator *di = FUNC1(server.cluster->nodes);
    dictEntry *de;
    int j = 0;
    while((de = FUNC3(di)) != NULL) {
        clusterNode *node = FUNC2(de);
        if (node->flags & (CLUSTER_NODE_NOADDR|CLUSTER_NODE_HANDSHAKE)) continue;
        ids[j] = FUNC7(REDISMODULE_NODE_ID_LEN);
        FUNC6(ids[j],node->name,REDISMODULE_NODE_ID_LEN);
        j++;
    }
    *numnodes = j;
    ids[j] = NULL; /* Null term so that FreeClusterNodesList does not need
                    * to also get the count argument. */
    FUNC4(di);
    return ids;
}