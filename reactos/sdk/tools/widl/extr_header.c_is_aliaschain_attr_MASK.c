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
struct TYPE_6__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 

int FUNC3(const type_t *type, enum attr_type attr)
{
    const type_t *t = type;
    for (;;)
    {
        if (FUNC0(t->attrs, attr))
            return 1;
        else if (FUNC2(t))
            t = FUNC1(t);
        else return 0;
    }
}