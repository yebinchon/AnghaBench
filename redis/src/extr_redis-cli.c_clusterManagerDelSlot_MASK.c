#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  clusterManagerNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ REDIS_REPLY_ERROR ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(clusterManagerNode *node, int slot,
                                 int ignore_unassigned_err)
{
    redisReply *reply = FUNC0(node,
        "CLUSTER DELSLOTS %d", slot);
    char *err = NULL;
    int success = FUNC2(node, reply, &err);
    if (!success && reply && reply->type == REDIS_REPLY_ERROR &&
        ignore_unassigned_err)
    {
        char *get_owner_err = NULL;
        clusterManagerNode *assigned_to =
            FUNC3(node, slot, &get_owner_err);
        if (!assigned_to) {
            if (get_owner_err == NULL) success = 1;
            else {
                FUNC1(node, get_owner_err);
                FUNC5(get_owner_err);
            }
        }
    }
    if (!success && err != NULL) {
        FUNC1(node, err);
        FUNC5(err);
    }
    if (reply) FUNC4(reply);
    return success;
}