#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sp; TYPE_1__* stack; } ;
typedef  TYPE_2__ ps_stack ;
struct TYPE_5__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 

__attribute__((used)) static inline int FUNC1(ps_stack *st, int t)
{
	return !FUNC0(st, 1) && st->stack[st->sp - 1].type == t;
}