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
struct TYPE_4__ {size_t n_columns; size_t n_cells; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

TableCell *FUNC2(Table *t, size_t row, size_t column) {
        size_t i;

        FUNC1(t);

        if (column >= t->n_columns)
                return NULL;

        i = row * t->n_columns + column;
        if (i >= t->n_cells)
                return NULL;

        return FUNC0(i);
}