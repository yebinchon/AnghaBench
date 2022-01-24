#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* type; } ;
typedef  TYPE_1__ var_t ;
struct TYPE_14__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_2__ type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_HANDLE ; 
 scalar_t__ TYPE_BASIC ; 
 scalar_t__ TYPE_BASIC_HANDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*) ; 
 TYPE_2__* FUNC2 (TYPE_2__ const*) ; 
 scalar_t__ FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 TYPE_2__* FUNC6 (TYPE_2__ const*) ; 

const type_t* FUNC7(const var_t* var)
{
    const type_t *t;
    for (t = var->type;
         FUNC1(t) || FUNC5(t);
         t = FUNC5(t) ? FUNC2(t) : FUNC6(t))
        if ((FUNC4(t) != TYPE_BASIC || FUNC3(t) != TYPE_BASIC_HANDLE) &&
            FUNC0(t->attrs, ATTR_HANDLE))
            return t;
    return NULL;
}