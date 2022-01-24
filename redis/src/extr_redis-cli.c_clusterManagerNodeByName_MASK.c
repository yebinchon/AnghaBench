#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_6__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_7__ {scalar_t__ name; } ;
typedef  TYPE_2__ clusterManagerNode ;
struct TYPE_8__ {int /*<<< orphan*/ * nodes; } ;

/* Variables and functions */
 TYPE_4__ cluster_manager ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static clusterManagerNode *FUNC7(const char *name) {
    if (cluster_manager.nodes == NULL) return NULL;
    clusterManagerNode *found = NULL;
    sds lcname = FUNC4();
    lcname = FUNC3(lcname, name);
    FUNC6(lcname);
    listIter li;
    listNode *ln;
    FUNC1(cluster_manager.nodes, &li);
    while ((ln = FUNC0(&li)) != NULL) {
        clusterManagerNode *n = ln->value;
        if (n->name && !FUNC2(n->name, lcname)) {
            found = n;
            break;
        }
    }
    FUNC5(lcname);
    return found;
}