#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  count; void* zl; } ;
typedef  TYPE_1__ quicklistNode ;
struct TYPE_11__ {TYPE_1__* head; int /*<<< orphan*/  count; int /*<<< orphan*/  fill; } ;
typedef  TYPE_2__ quicklist ;

/* Variables and functions */
 int /*<<< orphan*/  ZIPLIST_HEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 () ; 
 void* FUNC6 (void*,void*,size_t,int /*<<< orphan*/ ) ; 

int FUNC7(quicklist *quicklist, void *value, size_t sz) {
    quicklistNode *orig_head = quicklist->head;
    if (FUNC2(
            FUNC1(quicklist->head, quicklist->fill, sz))) {
        quicklist->head->zl =
            FUNC6(quicklist->head->zl, value, sz, ZIPLIST_HEAD);
        FUNC4(quicklist->head);
    } else {
        quicklistNode *node = FUNC3();
        node->zl = FUNC6(FUNC5(), value, sz, ZIPLIST_HEAD);

        FUNC4(node);
        FUNC0(quicklist, quicklist->head, node);
    }
    quicklist->count++;
    quicklist->head->count++;
    return (orig_head != quicklist->head);
}