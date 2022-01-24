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
struct cstate {char yychar; } ;
typedef  char Rune ;

/* Variables and functions */
 int L_CCLASS ; 
 int L_NCCLASS ; 
 int /*<<< orphan*/  FUNC0 (struct cstate*,char,char) ; 
 int /*<<< orphan*/  FUNC1 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC3 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC5 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC6 (struct cstate*) ; 
 int /*<<< orphan*/  FUNC7 (struct cstate*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct cstate*) ; 
 int FUNC9 (struct cstate*) ; 
 scalar_t__ FUNC10 (char*,char) ; 

__attribute__((used)) static int FUNC11(struct cstate *g)
{
	int type = L_CCLASS;
	int quoted, havesave, havedash;
	Rune save = 0;

	FUNC8(g);

	quoted = FUNC9(g);
	if (!quoted && g->yychar == '^') {
		type = L_NCCLASS;
		quoted = FUNC9(g);
	}

	havesave = havedash = 0;
	for (;;) {
		if (g->yychar == 0)
			FUNC7(g, "unterminated character class");
		if (!quoted && g->yychar == ']')
			break;

		if (!quoted && g->yychar == '-') {
			if (havesave) {
				if (havedash) {
					FUNC0(g, save, '-');
					havesave = havedash = 0;
				} else {
					havedash = 1;
				}
			} else {
				save = '-';
				havesave = 1;
			}
		} else if (quoted && FUNC10("DSWdsw", g->yychar)) {
			if (havesave) {
				FUNC0(g, save, save);
				if (havedash)
					FUNC0(g, '-', '-');
			}
			switch (g->yychar) {
			case 'd': FUNC4(g); break;
			case 's': FUNC5(g); break;
			case 'w': FUNC6(g); break;
			case 'D': FUNC1(g); break;
			case 'S': FUNC2(g); break;
			case 'W': FUNC3(g); break;
			}
			havesave = havedash = 0;
		} else {
			if (quoted) {
				if (g->yychar == 'b')
					g->yychar = '\b';
				else if (g->yychar == '0')
					g->yychar = 0;
				/* else identity escape */
			}
			if (havesave) {
				if (havedash) {
					FUNC0(g, save, g->yychar);
					havesave = havedash = 0;
				} else {
					FUNC0(g, save, save);
					save = g->yychar;
				}
			} else {
				save = g->yychar;
				havesave = 1;
			}
		}

		quoted = FUNC9(g);
	}

	if (havesave) {
		FUNC0(g, save, save);
		if (havedash)
			FUNC0(g, '-', '-');
	}

	return type;
}