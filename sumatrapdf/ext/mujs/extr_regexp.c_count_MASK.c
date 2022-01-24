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
struct cstate {int dummy; } ;
struct TYPE_3__ {int type; int m; int n; struct TYPE_3__* x; struct TYPE_3__* y; } ;
typedef  TYPE_1__ Renode ;

/* Variables and functions */
 int MAXPROG ; 
#define  P_ALT 133 
#define  P_CAT 132 
#define  P_NLA 131 
#define  P_PAR 130 
#define  P_PLA 129 
#define  P_REP 128 
 int REPINF ; 
 int /*<<< orphan*/  FUNC0 (struct cstate*,char*) ; 

__attribute__((used)) static int FUNC1(struct cstate *g, Renode *node)
{
	int min, max, n;
	if (!node) return 0;
	switch (node->type) {
	default: return 1;
	case P_CAT: return FUNC1(g, node->x) + FUNC1(g, node->y);
	case P_ALT: return FUNC1(g, node->x) + FUNC1(g, node->y) + 2;
	case P_REP:
		min = node->m;
		max = node->n;
		if (min == max) n = FUNC1(g, node->x) * min;
		else if (max < REPINF) n = FUNC1(g, node->x) * max + (max - min);
		else n = FUNC1(g, node->x) * (min + 1) + 2;
		if (n < 0 || n > MAXPROG) FUNC0(g, "program too large");
		return n;
	case P_PAR: return FUNC1(g, node->x) + 2;
	case P_PLA: return FUNC1(g, node->x) + 2;
	case P_NLA: return FUNC1(g, node->x) + 2;
	}
}