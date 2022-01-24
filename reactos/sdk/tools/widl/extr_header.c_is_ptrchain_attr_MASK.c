#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* type; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ var_t ;
struct TYPE_11__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_2__ type_t ;
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 

int FUNC5(const var_t *var, enum attr_type t)
{
    if (FUNC0(var->attrs, t))
        return 1;
    else
    {
        type_t *type = var->type;
        for (;;)
        {
            if (FUNC0(type->attrs, t))
                return 1;
            else if (FUNC3(type))
                type = FUNC2(type);
            else if (FUNC1(type))
                type = FUNC4(type);
            else return 0;
        }
    }
}