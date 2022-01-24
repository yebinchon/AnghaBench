#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_9__ {int slot; TYPE_3__* source; } ;
typedef  TYPE_2__ clusterManagerReshardTableItem ;
struct TYPE_10__ {float slots_count; int* slots; } ;
typedef  TYPE_3__ clusterManagerNode ;

/* Variables and functions */
 int CLUSTER_MANAGER_SLOTS ; 
 float FUNC0 (float) ; 
 int /*<<< orphan*/  clusterManagerSlotCountCompareDesc ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**) ; 
 void* FUNC9 (int) ; 

__attribute__((used)) static list *FUNC10(list *sources, int numslots) {
    list *moved = FUNC3();
    int src_count = FUNC4(sources), i = 0, tot_slots = 0, j;
    clusterManagerNode **sorted = FUNC9(src_count * sizeof(*sorted));
    listIter li;
    listNode *ln;
    FUNC6(sources, &li);
    while ((ln = FUNC5(&li)) != NULL) {
        clusterManagerNode *node = ln->value;
        tot_slots += node->slots_count;
        sorted[i++] = node;
    }
    FUNC7(sorted, src_count, sizeof(clusterManagerNode *),
          clusterManagerSlotCountCompareDesc);
    for (i = 0; i < src_count; i++) {
        clusterManagerNode *node = sorted[i];
        float n = ((float) numslots / tot_slots * node->slots_count);
        if (i == 0) n = FUNC0(n);
        else n = FUNC1(n);
        int max = (int) n, count = 0;
        for (j = 0; j < CLUSTER_MANAGER_SLOTS; j++) {
            int slot = node->slots[j];
            if (!slot) continue;
            if (count >= max || (int)FUNC4(moved) >= numslots) break;
            clusterManagerReshardTableItem *item = FUNC9(sizeof(*item));
            item->source = node;
            item->slot = j;
            FUNC2(moved, item);
            count++;
        }
    }
    FUNC8(sorted);
    return moved;
}