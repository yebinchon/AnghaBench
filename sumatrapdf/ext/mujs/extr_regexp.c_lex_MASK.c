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
struct cstate {int yychar; char* source; } ;

/* Variables and functions */
 int L_CCLASS ; 
 int L_CHAR ; 
 int L_NC ; 
 int L_NCCLASS ; 
 int L_NLA ; 
 int L_NWORD ; 
 int L_PLA ; 
 int L_REF ; 
 int L_WORD ; 
 int /*<<< orphan*/  FUNC0 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct cstate*) ; 
 int FUNC3 (struct cstate*) ; 
 int FUNC4 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC5 (struct cstate*) ; 
 int FUNC6 (struct cstate*) ; 

__attribute__((used)) static int FUNC7(struct cstate *g)
{
	int quoted = FUNC6(g);
	if (quoted) {
		switch (g->yychar) {
		case 'b': return L_WORD;
		case 'B': return L_NWORD;
		case 'd': FUNC5(g); FUNC0(g); return L_CCLASS;
		case 's': FUNC5(g); FUNC1(g); return L_CCLASS;
		case 'w': FUNC5(g); FUNC2(g); return L_CCLASS;
		case 'D': FUNC5(g); FUNC0(g); return L_NCCLASS;
		case 'S': FUNC5(g); FUNC1(g); return L_NCCLASS;
		case 'W': FUNC5(g); FUNC2(g); return L_NCCLASS;
		case '0': g->yychar = 0; return L_CHAR;
		}
		if (g->yychar >= '0' && g->yychar <= '9') {
			g->yychar -= '0';
			if (*g->source >= '0' && *g->source <= '9')
				g->yychar = g->yychar * 10 + *g->source++ - '0';
			return L_REF;
		}
		return L_CHAR;
	}

	switch (g->yychar) {
	case 0:
	case '$': case ')': case '*': case '+':
	case '.': case '?': case '^': case '|':
		return g->yychar;
	}

	if (g->yychar == '{')
		return FUNC4(g);
	if (g->yychar == '[')
		return FUNC3(g);
	if (g->yychar == '(') {
		if (g->source[0] == '?') {
			if (g->source[1] == ':') {
				g->source += 2;
				return L_NC;
			}
			if (g->source[1] == '=') {
				g->source += 2;
				return L_PLA;
			}
			if (g->source[1] == '!') {
				g->source += 2;
				return L_NLA;
			}
		}
		return '(';
	}

	return L_CHAR;
}