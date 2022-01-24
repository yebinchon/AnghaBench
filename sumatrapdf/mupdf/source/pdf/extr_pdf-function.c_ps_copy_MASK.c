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
typedef  int /*<<< orphan*/  psobj ;
struct TYPE_5__ {scalar_t__ sp; scalar_t__ stack; } ;
typedef  TYPE_1__ ps_stack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC3(ps_stack *st, int n)
{
	if (!FUNC2(st, n) && !FUNC1(st, n))
	{
		FUNC0(st->stack + st->sp, st->stack + st->sp - n, n * sizeof(psobj));
		st->sp += n;
	}
}