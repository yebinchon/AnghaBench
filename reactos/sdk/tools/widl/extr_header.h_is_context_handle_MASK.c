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
struct TYPE_9__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CONTEXTHANDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*) ; 

__attribute__((used)) static inline int FUNC5(const type_t *type)
{
    const type_t *t;
    for (t = type;
         FUNC1(t) || FUNC3(t);
         t = FUNC3(t) ? FUNC2(t) : FUNC4(t))
        if (FUNC0(t->attrs, ATTR_CONTEXTHANDLE))
            return 1;
    return 0;
}