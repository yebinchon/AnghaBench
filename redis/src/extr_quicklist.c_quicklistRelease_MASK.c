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
struct TYPE_5__ {unsigned long len; scalar_t__ count; struct TYPE_5__* zl; struct TYPE_5__* next; struct TYPE_5__* head; } ;
typedef  TYPE_1__ quicklistNode ;
typedef  TYPE_1__ quicklist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(quicklist *quicklist) {
    unsigned long len;
    quicklistNode *current, *next;

    current = quicklist->head;
    len = quicklist->len;
    while (len--) {
        next = current->next;

        FUNC0(current->zl);
        quicklist->count -= current->count;

        FUNC0(current);

        quicklist->len--;
        current = next;
    }
    FUNC0(quicklist);
}