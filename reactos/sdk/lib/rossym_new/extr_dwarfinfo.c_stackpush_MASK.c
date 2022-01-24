#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_3__ {int length; int max; int /*<<< orphan*/ * data; int /*<<< orphan*/ * storage; } ;
typedef  TYPE_1__ DwarfStack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC4(DwarfStack *stack, ulong value)
{
    if (stack->length == stack->max) {
        ulong *newstack = FUNC1(sizeof(ulong)*stack->max*2);
        FUNC2(newstack, stack->data, sizeof(ulong)*stack->length);
        if (stack->data != stack->storage)
            FUNC0(stack->data);
        stack->data = newstack;
        stack->max *= 2;
    }
    FUNC3("stack[%d] = %x", stack->length, value);
    stack->data[stack->length++] = value;
}