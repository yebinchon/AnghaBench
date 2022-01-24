#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  const* attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  attr_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_POINTERTYPE ; 
 unsigned char FC_RP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*) ; 
 unsigned char FUNC5 (TYPE_1__ const*) ; 
 scalar_t__ FUNC6 (TYPE_1__ const*) ; 
 unsigned char FUNC7 (TYPE_1__ const*) ; 

unsigned char FUNC8(const type_t *type, const attr_list_t *attrs, int toplevel_param)
{
    const type_t *t;
    int pointer_type;

    FUNC0(FUNC3(type) || FUNC2(type));

    pointer_type = FUNC1(attrs, ATTR_POINTERTYPE);
    if (pointer_type)
        return pointer_type;

    for (t = type; FUNC6(t); t = FUNC4(t))
    {
        pointer_type = FUNC1(t->attrs, ATTR_POINTERTYPE);
        if (pointer_type)
            return pointer_type;
    }

    if (toplevel_param)
        return FC_RP;
    else if (FUNC3(type))
        return FUNC7(type);
    else
        return FUNC5(type);
}