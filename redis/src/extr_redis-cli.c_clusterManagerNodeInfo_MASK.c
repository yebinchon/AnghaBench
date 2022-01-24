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
typedef  char* sds ;
struct TYPE_5__ {int flags; int /*<<< orphan*/ * replicas_count; int /*<<< orphan*/ * replicate; int /*<<< orphan*/  slots_count; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/  name; scalar_t__ dirty; } ;
typedef  TYPE_1__ clusterManagerNode ;

/* Variables and functions */
 int CLUSTER_MANAGER_FLAG_SLAVE ; 
 char* FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char*,char*,int /*<<< orphan*/ *,...) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static sds FUNC6(clusterManagerNode *node, int indent) {
    sds info = FUNC4();
    sds spaces = FUNC4();
    int i;
    for (i = 0; i < indent; i++) spaces = FUNC2(spaces, " ");
    if (indent) info = FUNC2(info, spaces);
    int is_master = !(node->flags & CLUSTER_MANAGER_FLAG_SLAVE);
    char *role = (is_master ? "M" : "S");
    sds slots = NULL;
    if (node->dirty && node->replicate != NULL)
        info = FUNC3(info, "S: %S %s:%u", node->name, &node->ip, node->port);
    else {
        slots = FUNC1(node);
        sds flags = FUNC0(node);
        info = FUNC3(info, "%s: %S %s:%u\n"
                               "%s   slots:%S (%u slots) "
                               "%S",
                               role, &node->name, node->ip, node->port, spaces,
                               slots, node->slots_count, flags);
        FUNC5(slots);
        FUNC5(flags);
    }
    if (node->replicate != NULL)
        info = FUNC3(info, "\n%s   replicates %S", spaces, node->replicate);
    else if (node->replicas_count)
        info = FUNC3(info, "\n%s   %U additional replica(s)",
                         spaces, node->replicas_count);
    FUNC5(spaces);
    return info;
}