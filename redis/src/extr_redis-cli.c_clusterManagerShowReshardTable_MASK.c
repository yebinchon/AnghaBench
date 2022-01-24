#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_6__ {int slot; TYPE_3__* source; } ;
typedef  TYPE_2__ clusterManagerReshardTableItem ;
struct TYPE_7__ {scalar_t__ name; } ;
typedef  TYPE_3__ clusterManagerNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 

__attribute__((used)) static void FUNC3(list *table) {
    listIter li;
    listNode *ln;
    FUNC1(table, &li);
    while ((ln = FUNC0(&li)) != NULL) {
        clusterManagerReshardTableItem *item = ln->value;
        clusterManagerNode *n = item->source;
        FUNC2("    Moving slot %d from %s\n", item->slot, (char *) n->name);
    }
}