#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  text; } ;
struct TYPE_18__ {int newline; char lexchar; TYPE_1__ lexbuf; int /*<<< orphan*/  lasttoken; int /*<<< orphan*/  line; int /*<<< orphan*/  lexline; } ;
typedef  TYPE_2__ js_State ;

/* Variables and functions */
 int TK_ADD_ASS ; 
 int TK_AND ; 
 int TK_AND_ASS ; 
 int TK_DEC ; 
 int TK_DIV_ASS ; 
 int TK_EQ ; 
 int TK_GE ; 
 int TK_INC ; 
 int TK_LE ; 
 int TK_MOD_ASS ; 
 int TK_MUL_ASS ; 
 int TK_NE ; 
 int TK_OR ; 
 int TK_OR_ASS ; 
 int TK_SHL ; 
 int TK_SHL_ASS ; 
 int TK_SHR ; 
 int TK_SHR_ASS ; 
 int TK_STRICTEQ ; 
 int TK_STRICTNE ; 
 int TK_SUB_ASS ; 
 int TK_USHR ; 
 int TK_USHR_ASS ; 
 int TK_XOR_ASS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (char) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,char) ; 

__attribute__((used)) static int FUNC18(js_State *J)
{
	J->newline = 0;

	while (1) {
		J->lexline = J->line; /* save location of beginning of token */

		while (FUNC7(J->lexchar))
			FUNC8(J);

		if (FUNC2(J, '\n')) {
			J->newline = 1;
			if (FUNC0(J->lasttoken))
				return ';';
			continue;
		}

		if (FUNC2(J, '/')) {
			if (FUNC2(J, '/')) {
				FUNC11(J);
				continue;
			} else if (FUNC2(J, '*')) {
				if (FUNC10(J))
					FUNC3(J, "multi-line comment not terminated");
				continue;
			} else if (FUNC1(J->lasttoken)) {
				return FUNC13(J);
			} else if (FUNC2(J, '=')) {
				return TK_DIV_ASS;
			} else {
				return '/';
			}
		}

		if (J->lexchar >= '0' && J->lexchar <= '9') {
			return FUNC12(J);
		}

		switch (J->lexchar) {
		case '(': FUNC8(J); return '(';
		case ')': FUNC8(J); return ')';
		case ',': FUNC8(J); return ',';
		case ':': FUNC8(J); return ':';
		case ';': FUNC8(J); return ';';
		case '?': FUNC8(J); return '?';
		case '[': FUNC8(J); return '[';
		case ']': FUNC8(J); return ']';
		case '{': FUNC8(J); return '{';
		case '}': FUNC8(J); return '}';
		case '~': FUNC8(J); return '~';

		case '\'':
		case '"':
			return FUNC14(J);

		case '.':
			return FUNC12(J);

		case '<':
			FUNC8(J);
			if (FUNC2(J, '<')) {
				if (FUNC2(J, '='))
					return TK_SHL_ASS;
				return TK_SHL;
			}
			if (FUNC2(J, '='))
				return TK_LE;
			return '<';

		case '>':
			FUNC8(J);
			if (FUNC2(J, '>')) {
				if (FUNC2(J, '>')) {
					if (FUNC2(J, '='))
						return TK_USHR_ASS;
					return TK_USHR;
				}
				if (FUNC2(J, '='))
					return TK_SHR_ASS;
				return TK_SHR;
			}
			if (FUNC2(J, '='))
				return TK_GE;
			return '>';

		case '=':
			FUNC8(J);
			if (FUNC2(J, '=')) {
				if (FUNC2(J, '='))
					return TK_STRICTEQ;
				return TK_EQ;
			}
			return '=';

		case '!':
			FUNC8(J);
			if (FUNC2(J, '=')) {
				if (FUNC2(J, '='))
					return TK_STRICTNE;
				return TK_NE;
			}
			return '!';

		case '+':
			FUNC8(J);
			if (FUNC2(J, '+'))
				return TK_INC;
			if (FUNC2(J, '='))
				return TK_ADD_ASS;
			return '+';

		case '-':
			FUNC8(J);
			if (FUNC2(J, '-'))
				return TK_DEC;
			if (FUNC2(J, '='))
				return TK_SUB_ASS;
			return '-';

		case '*':
			FUNC8(J);
			if (FUNC2(J, '='))
				return TK_MUL_ASS;
			return '*';

		case '%':
			FUNC8(J);
			if (FUNC2(J, '='))
				return TK_MOD_ASS;
			return '%';

		case '&':
			FUNC8(J);
			if (FUNC2(J, '&'))
				return TK_AND;
			if (FUNC2(J, '='))
				return TK_AND_ASS;
			return '&';

		case '|':
			FUNC8(J);
			if (FUNC2(J, '|'))
				return TK_OR;
			if (FUNC2(J, '='))
				return TK_OR_ASS;
			return '|';

		case '^':
			FUNC8(J);
			if (FUNC2(J, '='))
				return TK_XOR_ASS;
			return '^';

		case 0:
			return 0; /* EOF */
		}

		/* Handle \uXXXX escapes in identifiers */
		FUNC9(J);
		if (FUNC6(J->lexchar)) {
			FUNC16(J);
			FUNC17(J, J->lexchar);

			FUNC8(J);
			FUNC9(J);
			while (FUNC5(J->lexchar)) {
				FUNC17(J, J->lexchar);
				FUNC8(J);
				FUNC9(J);
			}

			FUNC15(J);

			return FUNC4(J, J->lexbuf.text);
		}

		if (J->lexchar >= 0x20 && J->lexchar <= 0x7E)
			FUNC3(J, "unexpected character: '%c'", J->lexchar);
		FUNC3(J, "unexpected character: \\u%04X", J->lexchar);
	}
}