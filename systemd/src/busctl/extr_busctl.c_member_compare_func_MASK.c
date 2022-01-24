#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; struct TYPE_7__ const* type; int /*<<< orphan*/  interface; } ;
typedef  TYPE_1__ Member ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const Member *x, const Member *y) {
        int d;

        FUNC0(x);
        FUNC0(y);
        FUNC0(x->type);
        FUNC0(y->type);

        d = FUNC2(x->interface, y->interface);
        if (d != 0)
                return d;

        d = FUNC1(x->type, y->type);
        if (d != 0)
                return d;

        return FUNC2(x->name, y->name);
}