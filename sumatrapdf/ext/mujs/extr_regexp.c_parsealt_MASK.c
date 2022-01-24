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
struct cstate {int dummy; } ;
struct TYPE_4__ {void* y; struct TYPE_4__* x; } ;
typedef  TYPE_1__ Renode ;

/* Variables and functions */
 int /*<<< orphan*/  P_ALT ; 
 scalar_t__ FUNC0 (struct cstate*,char) ; 
 TYPE_1__* FUNC1 (struct cstate*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct cstate*) ; 

__attribute__((used)) static Renode *FUNC3(struct cstate *g)
{
	Renode *alt, *x;
	alt = FUNC2(g);
	while (FUNC0(g, '|')) {
		x = alt;
		alt = FUNC1(g, P_ALT);
		alt->x = x;
		alt->y = FUNC2(g);
	}
	return alt;
}