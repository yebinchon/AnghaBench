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
struct TYPE_6__ {size_t n_cells; int /*<<< orphan*/ * empty_string; int /*<<< orphan*/ * reverse_map; int /*<<< orphan*/ * sort_map; int /*<<< orphan*/ * display_map; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

Table *FUNC3(Table *t) {
        size_t i;

        if (!t)
                return NULL;

        for (i = 0; i < t->n_cells; i++)
                FUNC2(t->data[i]);

        FUNC0(t->data);
        FUNC0(t->display_map);
        FUNC0(t->sort_map);
        FUNC0(t->reverse_map);
        FUNC0(t->empty_string);

        return FUNC1(t);
}