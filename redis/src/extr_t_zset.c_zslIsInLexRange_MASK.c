#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ele; } ;
typedef  TYPE_3__ zskiplistNode ;
struct TYPE_13__ {TYPE_2__* header; TYPE_3__* tail; } ;
typedef  TYPE_4__ zskiplist ;
struct TYPE_14__ {scalar_t__ maxex; scalar_t__ minex; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_5__ zlexrangespec ;
struct TYPE_11__ {TYPE_1__* level; } ;
struct TYPE_10__ {TYPE_3__* forward; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*) ; 

int FUNC3(zskiplist *zsl, zlexrangespec *range) {
    zskiplistNode *x;

    /* Test for ranges that will always be empty. */
    int cmp = FUNC0(range->min,range->max);
    if (cmp > 0 || (cmp == 0 && (range->minex || range->maxex)))
        return 0;
    x = zsl->tail;
    if (x == NULL || !FUNC1(x->ele,range))
        return 0;
    x = zsl->header->level[0].forward;
    if (x == NULL || !FUNC2(x->ele,range))
        return 0;
    return 1;
}