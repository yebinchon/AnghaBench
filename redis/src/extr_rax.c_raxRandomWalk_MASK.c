#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int size; scalar_t__ iskey; scalar_t__ data; scalar_t__ iscompr; } ;
typedef  TYPE_2__ raxNode ;
struct TYPE_15__ {TYPE_2__* node; int /*<<< orphan*/  stack; TYPE_1__* rt; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ raxIterator ;
typedef  int /*<<< orphan*/  n ;
struct TYPE_13__ {scalar_t__ numele; TYPE_2__* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAX_ITER_EOF ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__**,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 TYPE_2__** FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC9(raxIterator *it, size_t steps) {
    if (it->rt->numele == 0) {
        it->flags |= RAX_ITER_EOF;
        return 0;
    }

    if (steps == 0) {
        size_t fle = FUNC0(FUNC1(it->rt->numele));
        fle *= 2;
        steps = 1 + FUNC3() % fle;
    }

    raxNode *n = it->node;
    while(steps > 0 || !n->iskey) {
        int numchildren = n->iscompr ? 1 : n->size;
        int r = FUNC3() % (numchildren+(n != it->rt->head));

        if (r == numchildren) {
            /* Go up to parent. */
            n = FUNC7(&it->stack);
            int todel = n->iscompr ? n->size : 1;
            FUNC5(it,todel);
        } else {
            /* Select a random child. */
            if (n->iscompr) {
                if (!FUNC4(it,n->data,n->size)) return 0;
            } else {
                if (!FUNC4(it,n->data+r,1)) return 0;
            }
            raxNode **cp = FUNC6(n)+r;
            if (!FUNC8(&it->stack,n)) return 0;
            FUNC2(&n,cp,sizeof(n));
        }
        if (n->iskey) steps--;
    }
    it->node = n;
    return 1;
}