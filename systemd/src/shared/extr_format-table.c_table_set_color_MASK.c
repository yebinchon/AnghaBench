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
struct TYPE_2__ {int /*<<< orphan*/  color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(Table *t, TableCell *cell, const char *color) {
        int r;

        FUNC0(t);
        FUNC0(cell);

        r = FUNC2(t, cell);
        if (r < 0)
                return r;

        FUNC3(t, cell)->color = FUNC1(color);
        return 0;
}