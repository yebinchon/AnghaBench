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
struct cstate {scalar_t__ lookahead; scalar_t__ yychar; scalar_t__ nsub; TYPE_1__** sub; int /*<<< orphan*/  yycc; } ;
struct TYPE_4__ {scalar_t__ c; size_t n; struct TYPE_4__* x; int /*<<< orphan*/  cc; } ;
typedef  TYPE_1__ Renode ;

/* Variables and functions */
 scalar_t__ L_CCLASS ; 
 scalar_t__ L_CHAR ; 
 char L_NC ; 
 scalar_t__ L_NCCLASS ; 
 char L_NLA ; 
 char L_PLA ; 
 scalar_t__ L_REF ; 
 scalar_t__ MAXSUB ; 
 int /*<<< orphan*/  P_ANY ; 
 int /*<<< orphan*/  P_CCLASS ; 
 int /*<<< orphan*/  P_CHAR ; 
 int /*<<< orphan*/  P_NCCLASS ; 
 int /*<<< orphan*/  P_NLA ; 
 int /*<<< orphan*/  P_PAR ; 
 int /*<<< orphan*/  P_PLA ; 
 int /*<<< orphan*/  P_REF ; 
 scalar_t__ FUNC0 (struct cstate*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct cstate*,char*) ; 
 TYPE_1__* FUNC2 (struct cstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cstate*) ; 
 void* FUNC4 (struct cstate*) ; 

__attribute__((used)) static Renode *FUNC5(struct cstate *g)
{
	Renode *atom;
	if (g->lookahead == L_CHAR) {
		atom = FUNC2(g, P_CHAR);
		atom->c = g->yychar;
		FUNC3(g);
		return atom;
	}
	if (g->lookahead == L_CCLASS) {
		atom = FUNC2(g, P_CCLASS);
		atom->cc = g->yycc;
		FUNC3(g);
		return atom;
	}
	if (g->lookahead == L_NCCLASS) {
		atom = FUNC2(g, P_NCCLASS);
		atom->cc = g->yycc;
		FUNC3(g);
		return atom;
	}
	if (g->lookahead == L_REF) {
		atom = FUNC2(g, P_REF);
		if (g->yychar == 0 || g->yychar >= g->nsub || !g->sub[g->yychar])
			FUNC1(g, "invalid back-reference");
		atom->n = g->yychar;
		atom->x = g->sub[g->yychar];
		FUNC3(g);
		return atom;
	}
	if (FUNC0(g, '.'))
		return FUNC2(g, P_ANY);
	if (FUNC0(g, '(')) {
		atom = FUNC2(g, P_PAR);
		if (g->nsub == MAXSUB)
			FUNC1(g, "too many captures");
		atom->n = g->nsub++;
		atom->x = FUNC4(g);
		g->sub[atom->n] = atom;
		if (!FUNC0(g, ')'))
			FUNC1(g, "unmatched '('");
		return atom;
	}
	if (FUNC0(g, L_NC)) {
		atom = FUNC4(g);
		if (!FUNC0(g, ')'))
			FUNC1(g, "unmatched '('");
		return atom;
	}
	if (FUNC0(g, L_PLA)) {
		atom = FUNC2(g, P_PLA);
		atom->x = FUNC4(g);
		if (!FUNC0(g, ')'))
			FUNC1(g, "unmatched '('");
		return atom;
	}
	if (FUNC0(g, L_NLA)) {
		atom = FUNC2(g, P_NLA);
		atom->x = FUNC4(g);
		if (!FUNC0(g, ')'))
			FUNC1(g, "unmatched '('");
		return atom;
	}
	FUNC1(g, "syntax error");
	return NULL;
}