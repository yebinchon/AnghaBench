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
struct TYPE_5__ {size_t n_columns; size_t n_cells; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TABLE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(Table *t, size_t until_column) {
        int r;

        FUNC0(t);

        /* Fill the rest of the current line with empty cells until we reach the specified column. Will add
         * at least one cell. Pass 0 in order to fill a line to the end or insert an empty line. */

        if (until_column >= t->n_columns)
                return -EINVAL;

        do {
                r = FUNC1(t, NULL, TABLE_EMPTY, NULL);
                if (r < 0)
                        return r;

        } while ((t->n_cells % t->n_columns) != until_column);

        return 0;
}