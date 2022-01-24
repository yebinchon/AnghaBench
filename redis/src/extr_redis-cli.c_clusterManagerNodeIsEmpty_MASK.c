#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  clusterManagerNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char**) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 long FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(clusterManagerNode *node, char **err) {
    redisReply *info = FUNC2(node, err);
    int is_empty = 1;
    if (info == NULL) return 0;
    if (FUNC5(info->str, "db0:") != NULL) {
        is_empty = 0;
        goto result;
    }
    FUNC3(info);
    info = FUNC0(node, "CLUSTER INFO");
    if (err != NULL) *err = NULL;
    if (!FUNC1(node, info, err)) {
        is_empty = 0;
        goto result;
    }
    long known_nodes = FUNC4(info->str, "cluster_known_nodes");
    is_empty = (known_nodes == 1);
result:
    FUNC3(info);
    return is_empty;
}