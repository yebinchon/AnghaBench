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
struct TYPE_5__ {scalar_t__ type; int integer; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  clusterManagerNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ REDIS_REPLY_INTEGER ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static signed int FUNC3(clusterManagerNode *node,
                                                int slot)
{
    redisReply *reply = FUNC0(node,
        "CLUSTER COUNTKEYSINSLOT %d", slot);
    int count = -1;
    int success = FUNC1(node, reply, NULL);
    if (success && reply->type == REDIS_REPLY_INTEGER) count = reply->integer;
    if (reply) FUNC2(reply);
    return count;
}