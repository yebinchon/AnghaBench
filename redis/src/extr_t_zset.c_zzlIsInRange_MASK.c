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
struct TYPE_5__ {scalar_t__ min; scalar_t__ max; scalar_t__ maxex; scalar_t__ minex; } ;
typedef  TYPE_1__ zrangespec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (double,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (double,TYPE_1__*) ; 
 double FUNC4 (unsigned char*) ; 

int FUNC5(unsigned char *zl, zrangespec *range) {
    unsigned char *p;
    double score;

    /* Test for ranges that will always be empty. */
    if (range->min > range->max ||
            (range->min == range->max && (range->minex || range->maxex)))
        return 0;

    p = FUNC1(zl,-1); /* Last score. */
    if (p == NULL) return 0; /* Empty sorted set */
    score = FUNC4(p);
    if (!FUNC2(score,range))
        return 0;

    p = FUNC1(zl,1); /* First score. */
    FUNC0(p != NULL);
    score = FUNC4(p);
    if (!FUNC3(score,range))
        return 0;

    return 1;
}