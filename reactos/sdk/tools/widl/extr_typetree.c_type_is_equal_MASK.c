#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ name; } ;
typedef  TYPE_1__ type_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 

int FUNC2(const type_t *type1, const type_t *type2)
{
    if (FUNC1(type1) != FUNC1(type2))
        return FALSE;

    if (type1->name && type2->name)
        return !FUNC0(type1->name, type2->name);
    else if ((!type1->name && type2->name) || (type1->name && !type2->name))
        return FALSE;

    /* FIXME: do deep inspection of types to determine if they are equal */

    return FALSE;
}