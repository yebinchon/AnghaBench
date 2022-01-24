#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ type; int len; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_9__ {scalar_t__ dirty; int /*<<< orphan*/ * replicate; } ;
typedef  TYPE_2__ clusterManagerNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int FUNC1 (TYPE_2__*,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(clusterManagerNode *node, char **err) {
    if (!node->dirty) return 0;
    redisReply *reply = NULL;
    int is_err = 0, success = 1;
    if (err != NULL) *err = NULL;
    if (node->replicate != NULL) {
        reply = FUNC0(node, "CLUSTER REPLICATE %s",
                                        node->replicate);
        if (reply == NULL || (is_err = (reply->type == REDIS_REPLY_ERROR))) {
            if (is_err && err != NULL) {
                *err = FUNC4((reply->len + 1) * sizeof(char));
                FUNC3(*err, reply->str);
            }
            success = 0;
            /* If the cluster did not already joined it is possible that
             * the slave does not know the master node yet. So on errors
             * we return ASAP leaving the dirty flag set, to flush the
             * config later. */
            goto cleanup;
        }
    } else {
        int added = FUNC1(node, err);
        if (!added || *err != NULL) success = 0;
    }
    node->dirty = 0;
cleanup:
    if (reply != NULL) FUNC2(reply);
    return success;
}