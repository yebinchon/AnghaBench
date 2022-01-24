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
struct TYPE_5__ {scalar_t__ maxex; scalar_t__ minex; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ zlexrangespec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,TYPE_1__*) ; 

int FUNC5(unsigned char *zl, zlexrangespec *range) {
    unsigned char *p;

    /* Test for ranges that will always be empty. */
    int cmp = FUNC0(range->min,range->max);
    if (cmp > 0 || (cmp == 0 && (range->minex || range->maxex)))
        return 0;

    p = FUNC2(zl,-2); /* Last element. */
    if (p == NULL) return 0;
    if (!FUNC3(p,range))
        return 0;

    p = FUNC2(zl,0); /* First element. */
    FUNC1(p != NULL);
    if (!FUNC4(p,range))
        return 0;

    return 1;
}