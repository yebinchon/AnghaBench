#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int n; int /*<<< orphan*/  cc; int /*<<< orphan*/  c; struct TYPE_10__* y; struct TYPE_10__* x; } ;
struct TYPE_9__ {int type; int m; int n; int /*<<< orphan*/  cc; int /*<<< orphan*/  c; struct TYPE_9__* x; int /*<<< orphan*/  ng; struct TYPE_9__* y; } ;
struct TYPE_8__ {int flags; TYPE_3__* end; } ;
typedef  TYPE_1__ Reprog ;
typedef  TYPE_2__ Renode ;
typedef  TYPE_3__ Reinst ;

/* Variables and functions */
 int /*<<< orphan*/  I_ANY ; 
 int /*<<< orphan*/  I_BOL ; 
 int /*<<< orphan*/  I_CCLASS ; 
 int /*<<< orphan*/  I_CHAR ; 
 int /*<<< orphan*/  I_END ; 
 int /*<<< orphan*/  I_EOL ; 
 int /*<<< orphan*/  I_JUMP ; 
 int /*<<< orphan*/  I_LPAR ; 
 int /*<<< orphan*/  I_NCCLASS ; 
 int /*<<< orphan*/  I_NLA ; 
 int /*<<< orphan*/  I_NWORD ; 
 int /*<<< orphan*/  I_PLA ; 
 int /*<<< orphan*/  I_REF ; 
 int /*<<< orphan*/  I_RPAR ; 
 int /*<<< orphan*/  I_SPLIT ; 
 int /*<<< orphan*/  I_WORD ; 
#define  P_ALT 142 
#define  P_ANY 141 
#define  P_BOL 140 
#define  P_CAT 139 
#define  P_CCLASS 138 
#define  P_CHAR 137 
#define  P_EOL 136 
#define  P_NCCLASS 135 
#define  P_NLA 134 
#define  P_NWORD 133 
#define  P_PAR 132 
#define  P_PLA 131 
#define  P_REF 130 
#define  P_REP 129 
#define  P_WORD 128 
 int REG_ICASE ; 
 int REPINF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Reprog *prog, Renode *node)
{
	Reinst *inst, *split, *jump;
	int i;

loop:
	if (!node)
		return;

	switch (node->type) {
	case P_CAT:
		FUNC2(prog, node->x);
		node = node->y;
		goto loop;

	case P_ALT:
		split = FUNC1(prog, I_SPLIT);
		FUNC2(prog, node->x);
		jump = FUNC1(prog, I_JUMP);
		FUNC2(prog, node->y);
		split->x = split + 1;
		split->y = jump + 1;
		jump->x = prog->end;
		break;

	case P_REP:
		inst = NULL; /* silence compiler warning. assert(node->m > 0). */
		for (i = 0; i < node->m; ++i) {
			inst = prog->end;
			FUNC2(prog, node->x);
		}
		if (node->m == node->n)
			break;
		if (node->n < REPINF) {
			for (i = node->m; i < node->n; ++i) {
				split = FUNC1(prog, I_SPLIT);
				FUNC2(prog, node->x);
				if (node->ng) {
					split->y = split + 1;
					split->x = prog->end;
				} else {
					split->x = split + 1;
					split->y = prog->end;
				}
			}
		} else if (node->m == 0) {
			split = FUNC1(prog, I_SPLIT);
			FUNC2(prog, node->x);
			jump = FUNC1(prog, I_JUMP);
			if (node->ng) {
				split->y = split + 1;
				split->x = prog->end;
			} else {
				split->x = split + 1;
				split->y = prog->end;
			}
			jump->x = split;
		} else {
			split = FUNC1(prog, I_SPLIT);
			if (node->ng) {
				split->y = inst;
				split->x = prog->end;
			} else {
				split->x = inst;
				split->y = prog->end;
			}
		}
		break;

	case P_BOL: FUNC1(prog, I_BOL); break;
	case P_EOL: FUNC1(prog, I_EOL); break;
	case P_WORD: FUNC1(prog, I_WORD); break;
	case P_NWORD: FUNC1(prog, I_NWORD); break;

	case P_PAR:
		inst = FUNC1(prog, I_LPAR);
		inst->n = node->n;
		FUNC2(prog, node->x);
		inst = FUNC1(prog, I_RPAR);
		inst->n = node->n;
		break;
	case P_PLA:
		split = FUNC1(prog, I_PLA);
		FUNC2(prog, node->x);
		FUNC1(prog, I_END);
		split->x = split + 1;
		split->y = prog->end;
		break;
	case P_NLA:
		split = FUNC1(prog, I_NLA);
		FUNC2(prog, node->x);
		FUNC1(prog, I_END);
		split->x = split + 1;
		split->y = prog->end;
		break;

	case P_ANY:
		FUNC1(prog, I_ANY);
		break;
	case P_CHAR:
		inst = FUNC1(prog, I_CHAR);
		inst->c = (prog->flags & REG_ICASE) ? FUNC0(node->c) : node->c;
		break;
	case P_CCLASS:
		inst = FUNC1(prog, I_CCLASS);
		inst->cc = node->cc;
		break;
	case P_NCCLASS:
		inst = FUNC1(prog, I_NCCLASS);
		inst->cc = node->cc;
		break;
	case P_REF:
		inst = FUNC1(prog, I_REF);
		inst->n = node->n;
		break;
	}
}