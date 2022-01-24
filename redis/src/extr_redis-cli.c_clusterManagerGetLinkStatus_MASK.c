#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_9__ {int /*<<< orphan*/  node_addr; int /*<<< orphan*/  node_name; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ clusterManagerNode ;
typedef  TYPE_2__ clusterManagerLink ;
struct TYPE_10__ {int /*<<< orphan*/ * nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  clusterManagerLinkDictType ; 
 TYPE_6__ cluster_manager ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static dict *FUNC15(void) {
    if (cluster_manager.nodes == NULL) return NULL;
    dict *status = FUNC2(&clusterManagerLinkDictType, NULL);
    listIter li;
    listNode *ln;
    FUNC9(cluster_manager.nodes, &li);
    while ((ln = FUNC7(&li)) != NULL) {
        clusterManagerNode *node = ln->value;
        list *links = FUNC0(node);
        if (links) {
            listIter lli;
            listNode *lln;
            FUNC9(links, &lli);
            while ((lln = FUNC7(&lli)) != NULL) {
                clusterManagerLink *link = lln->value;
                list *from = NULL;
                dictEntry *entry = FUNC3(status, link->node_addr);
                if (entry) from = FUNC4(entry);
                else {
                    from = FUNC6();
                    FUNC1(status, FUNC11(link->node_addr), from);
                }
                sds myaddr = FUNC12();
                myaddr = FUNC10(myaddr, "%s:%u", node->ip, node->port);
                FUNC5(from, myaddr);
                FUNC13(link->node_name);
                FUNC13(link->node_addr);
                FUNC14(link);
            }
            FUNC8(links);
        }
    }
    return status;
}