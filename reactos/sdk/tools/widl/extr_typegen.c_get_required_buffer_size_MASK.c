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
struct TYPE_4__ {int /*<<< orphan*/  attrs; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ var_t ;
typedef  enum pass { ____Placeholder_pass } pass ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CONTEXTHANDLE ; 
 int /*<<< orphan*/  ATTR_IN ; 
 int /*<<< orphan*/  ATTR_OUT ; 
 int PASS_IN ; 
 int PASS_OUT ; 
 int PASS_RETURN ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(const var_t *var, unsigned int *alignment, enum pass pass)
{
    int in_attr = FUNC1(var->attrs, ATTR_IN);
    int out_attr = FUNC1(var->attrs, ATTR_OUT);

    if (!in_attr && !out_attr)
        in_attr = 1;

    *alignment = 0;

    if ((pass == PASS_IN && in_attr) || (pass == PASS_OUT && out_attr) ||
        pass == PASS_RETURN)
    {
        if (FUNC2(var, ATTR_CONTEXTHANDLE))
        {
            *alignment = 4;
            return 20;
        }

        if (!FUNC3(var->attrs, var->type))
            return FUNC0(var->type, var->name,
                                                 var->attrs, TRUE, alignment);
    }
    return 0;
}