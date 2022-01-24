#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ clusterManagerNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(clusterManagerNode *node,
                                                 char *err)
{
    char *msg;
    if (err) msg = err;
    else {
        msg = "is not empty. Either the node already knows other "
              "nodes (check with CLUSTER NODES) or contains some "
              "key in database 0.";
    }
    FUNC0("[ERR] Node %s:%d %s\n", node->ip, node->port, msg);
}