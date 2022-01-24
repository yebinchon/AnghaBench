#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {scalar_t__ where; } ;
typedef  TYPE_1__ Automount ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(Automount *a) {
        int r;

        FUNC1(a);

        if (a->where)
                return 0;

        r = FUNC3(FUNC0(a)->id, &a->where);
        if (r < 0)
                return r;

        FUNC2(a->where, false);
        return 1;
}