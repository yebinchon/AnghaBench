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
struct TYPE_4__ {int uppercase; int /*<<< orphan*/  formatted; } ;
typedef  TYPE_1__ TableData ;
typedef  int /*<<< orphan*/  TableCell ;
typedef  int /*<<< orphan*/  Table ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(Table *t, TableCell *cell, bool b) {
        TableData *d;
        int r;

        FUNC0(t);
        FUNC0(cell);

        r = FUNC3(t, cell);
        if (r < 0)
                return r;

        FUNC1(d = FUNC4(t, cell));

        if (d->uppercase == b)
                return 0;

        d->formatted = FUNC2(d->formatted);
        d->uppercase = b;
        return 1;
}