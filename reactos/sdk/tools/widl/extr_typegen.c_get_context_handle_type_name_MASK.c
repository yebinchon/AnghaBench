#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char const* name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CONTEXTHANDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC5 (TYPE_1__ const*) ; 

__attribute__((used)) static const char *FUNC6(const type_t *type)
{
    const type_t *t;
    for (t = type;
         FUNC2(t) || FUNC4(t);
         t = FUNC4(t) ? FUNC3(t) : FUNC5(t))
        if (FUNC1(t->attrs, ATTR_CONTEXTHANDLE))
            return t->name;
    FUNC0(0);
    return NULL;
}