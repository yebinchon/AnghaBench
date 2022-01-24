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
struct TYPE_6__ {size_t n_items; scalar_t__ items; int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ ItemArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ItemArray* FUNC4(ItemArray *a) {
        size_t n;

        if (!a)
                return NULL;

        for (n = 0; n < a->n_items; n++)
                FUNC1(a->items + n);

        FUNC3(a->children);
        FUNC0(a->items);
        return FUNC2(a);
}