#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numslaves; TYPE_2__** slaves; } ;
typedef  TYPE_1__ clusterNode ;
struct TYPE_6__ {long long repl_offset; TYPE_1__* slaveof; } ;

/* Variables and functions */
 TYPE_2__* myself ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 long long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(void) {
    long long myoffset;
    int j, rank = 0;
    clusterNode *master;

    FUNC3(FUNC1(myself));
    master = myself->slaveof;
    if (master == NULL) return 0; /* Never called by slaves without master. */

    myoffset = FUNC2();
    for (j = 0; j < master->numslaves; j++)
        if (master->slaves[j] != myself &&
            !FUNC0(master->slaves[j]) &&
            master->slaves[j]->repl_offset > myoffset) rank++;
    return rank;
}