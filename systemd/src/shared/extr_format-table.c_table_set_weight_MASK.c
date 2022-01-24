#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableCell ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_2__ {unsigned int weight; } ;

/* Variables and functions */
 unsigned int DEFAULT_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(Table *t, TableCell *cell, unsigned weight) {
        int r;

        FUNC0(t);
        FUNC0(cell);

        if (weight == (unsigned) -1)
                weight = DEFAULT_WEIGHT;

        r = FUNC1(t, cell);
        if (r < 0)
                return r;

        FUNC2(t, cell)->weight = weight;
        return 0;
}