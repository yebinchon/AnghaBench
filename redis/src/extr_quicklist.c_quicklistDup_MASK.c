#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ encoding; size_t sz; scalar_t__ count; void* zl; struct TYPE_10__* next; } ;
typedef  TYPE_1__ quicklistNode ;
struct TYPE_11__ {int sz; } ;
typedef  TYPE_2__ quicklistLZF ;
struct TYPE_12__ {int /*<<< orphan*/  tail; int /*<<< orphan*/  count; TYPE_1__* head; int /*<<< orphan*/  compress; int /*<<< orphan*/  fill; } ;
typedef  TYPE_3__ quicklist ;

/* Variables and functions */
 scalar_t__ QUICKLIST_NODE_ENCODING_LZF ; 
 scalar_t__ QUICKLIST_NODE_ENCODING_RAW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 TYPE_1__* FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t) ; 

quicklist *FUNC5(quicklist *orig) {
    quicklist *copy;

    copy = FUNC3(orig->fill, orig->compress);

    for (quicklistNode *current = orig->head; current;
         current = current->next) {
        quicklistNode *node = FUNC2();

        if (current->encoding == QUICKLIST_NODE_ENCODING_LZF) {
            quicklistLZF *lzf = (quicklistLZF *)current->zl;
            size_t lzf_sz = sizeof(*lzf) + lzf->sz;
            node->zl = FUNC4(lzf_sz);
            FUNC1(node->zl, current->zl, lzf_sz);
        } else if (current->encoding == QUICKLIST_NODE_ENCODING_RAW) {
            node->zl = FUNC4(current->sz);
            FUNC1(node->zl, current->zl, current->sz);
        }

        node->count = current->count;
        copy->count += node->count;
        node->sz = current->sz;
        node->encoding = current->encoding;

        FUNC0(copy, copy->tail, node);
    }

    /* copy->count must equal orig->count here */
    return copy;
}