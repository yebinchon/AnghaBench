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
typedef  int /*<<< orphan*/  fz_draw_state ;
struct TYPE_4__ {int top; int stack_cap; int /*<<< orphan*/ * stack; } ;
typedef  TYPE_1__ fz_draw_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static fz_draw_state *FUNC3(fz_context *ctx, fz_draw_device *dev, const char *message)
{
	fz_draw_state *state;
	if (dev->top == dev->stack_cap-1)
		FUNC1(ctx, dev);
	state = &dev->stack[dev->top];
	dev->top++;
	FUNC2(&state[1], state, sizeof(*state));
	FUNC0(message);
	return state;
}