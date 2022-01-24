#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_8__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 int DICT_OK ; 
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

void FUNC7(clusterNode *node, char *newname) {
    int retval;
    sds s = FUNC4(node->name, CLUSTER_NAMELEN);

    FUNC6(LL_DEBUG,"Renaming node %.40s into %.40s",
        node->name, newname);
    retval = FUNC1(server.cluster->nodes, s);
    FUNC3(s);
    FUNC5(retval == DICT_OK);
    FUNC2(node->name, newname, CLUSTER_NAMELEN);
    FUNC0(node);
}