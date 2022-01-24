#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int level; struct TYPE_6__* parent; } ;
typedef  TYPE_1__* PDIR_RECORD ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(PDIR_RECORD p, PDIR_RECORD q)
{
    int n = p->level - q->level;
    if (p == q)
        return 0;
    if (n == 0)
    {
        n = FUNC1(p->parent, q->parent);
        if (n == 0)
            n = FUNC0(p, q);
    }
    return n;
}