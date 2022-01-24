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
typedef  int /*<<< orphan*/  raxNode ;
struct TYPE_7__ {TYPE_2__* node; int /*<<< orphan*/  stack; } ;
typedef  TYPE_1__ raxIterator ;
struct TYPE_8__ {int size; int data; scalar_t__ iscompr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/ ** FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC4(raxIterator *it) {
    while(it->node->size) {
        if (it->node->iscompr) {
            if (!FUNC1(it,it->node->data,
                it->node->size)) return 0;
        } else {
            if (!FUNC1(it,it->node->data+it->node->size-1,1))
                return 0;
        }
        raxNode **cp = FUNC2(it->node);
        if (!FUNC3(&it->stack,it->node)) return 0;
        FUNC0(&it->node,cp,sizeof(it->node));
    }
    return 1;
}