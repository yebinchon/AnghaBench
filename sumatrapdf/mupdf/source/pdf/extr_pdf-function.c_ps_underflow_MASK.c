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
struct TYPE_3__ {int sp; } ;
typedef  TYPE_1__ ps_stack ;

/* Variables and functions */

__attribute__((used)) static inline int FUNC0(ps_stack *st, int n)
{
	return n < 0 || n > st->sp;
}