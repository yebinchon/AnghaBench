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
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_8__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 int C_ERR ; 
 int C_OK ; 
 int DICT_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ server ; 

int FUNC2(clusterNode *node) {
    int retval;

    retval = FUNC0(server.cluster->nodes,
            FUNC1(node->name,CLUSTER_NAMELEN), node);
    return (retval == DICT_OK) ? C_OK : C_ERR;
}