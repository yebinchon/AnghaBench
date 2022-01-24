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
struct TYPE_10__ {void* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_11__ {void* (* dup ) (void*) ;int /*<<< orphan*/  match; int /*<<< orphan*/  free; } ;
typedef  TYPE_2__ list ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,void*) ; 
 TYPE_2__* FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (void*) ; 

list *FUNC6(list *orig)
{
    list *copy;
    listIter iter;
    listNode *node;

    if ((copy = FUNC1()) == NULL)
        return NULL;
    copy->dup = orig->dup;
    copy->free = orig->free;
    copy->match = orig->match;
    FUNC4(orig, &iter);
    while((node = FUNC2(&iter)) != NULL) {
        void *value;

        if (copy->dup) {
            value = copy->dup(node->value);
            if (value == NULL) {
                FUNC3(copy);
                return NULL;
            }
        } else
            value = node->value;
        if (FUNC0(copy, value) == NULL) {
            FUNC3(copy);
            return NULL;
        }
    }
    return copy;
}