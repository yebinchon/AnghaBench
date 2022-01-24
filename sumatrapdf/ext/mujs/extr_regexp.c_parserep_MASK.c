#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cstate {scalar_t__ lookahead; int yymin; int yymax; } ;
typedef  int /*<<< orphan*/  Renode ;

/* Variables and functions */
 scalar_t__ L_COUNT ; 
 char L_NWORD ; 
 char L_WORD ; 
 int /*<<< orphan*/  P_BOL ; 
 int /*<<< orphan*/  P_EOL ; 
 int /*<<< orphan*/  P_NWORD ; 
 int /*<<< orphan*/  P_WORD ; 
 int REPINF ; 
 scalar_t__ FUNC0 (struct cstate*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct cstate*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct cstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct cstate*,int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cstate*) ; 
 int /*<<< orphan*/ * FUNC5 (struct cstate*) ; 

__attribute__((used)) static Renode *FUNC6(struct cstate *g)
{
	Renode *atom;

	if (FUNC0(g, '^')) return FUNC2(g, P_BOL);
	if (FUNC0(g, '$')) return FUNC2(g, P_EOL);
	if (FUNC0(g, L_WORD)) return FUNC2(g, P_WORD);
	if (FUNC0(g, L_NWORD)) return FUNC2(g, P_NWORD);

	atom = FUNC5(g);
	if (g->lookahead == L_COUNT) {
		int min = g->yymin, max = g->yymax;
		FUNC4(g);
		if (max < min)
			FUNC1(g, "invalid quantifier");
		return FUNC3(g, atom, FUNC0(g, '?'), min, max);
	}
	if (FUNC0(g, '*')) return FUNC3(g, atom, FUNC0(g, '?'), 0, REPINF);
	if (FUNC0(g, '+')) return FUNC3(g, atom, FUNC0(g, '?'), 1, REPINF);
	if (FUNC0(g, '?')) return FUNC3(g, atom, FUNC0(g, '?'), 0, 1);
	return atom;
}