#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_8__ {scalar_t__ (* match ) (void*,void*) ;} ;
typedef  TYPE_2__ list ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (void*,void*) ; 

listNode *FUNC3(list *list, void *key)
{
    listIter iter;
    listNode *node;

    FUNC1(list, &iter);
    while((node = FUNC0(&iter)) != NULL) {
        if (list->match) {
            if (list->match(node->value, key)) {
                return node;
            }
        } else {
            if (key == node->value) {
                return node;
            }
        }
    }
    return NULL;
}