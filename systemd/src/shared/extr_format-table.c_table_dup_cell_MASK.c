#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableCell ;
struct TYPE_4__ {size_t n_cells; int /*<<< orphan*/ * data; int /*<<< orphan*/  n_columns; int /*<<< orphan*/  n_allocated; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(Table *t, TableCell *cell) {
        size_t i;

        FUNC3(t);

        /* Add the data of the specified cell a second time as a new cell to the end. */

        i = FUNC2(cell);
        if (i >= t->n_cells)
                return -ENXIO;

        if (!FUNC0(t->data, t->n_allocated, FUNC1(t->n_cells + 1, t->n_columns)))
                return -ENOMEM;

        t->data[t->n_cells++] = FUNC4(t->data[i]);
        return 0;
}