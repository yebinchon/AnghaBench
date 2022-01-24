#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char lexchar; int /*<<< orphan*/  line; int /*<<< orphan*/  lexline; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int TK_FALSE ; 
 int TK_NULL ; 
 int TK_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

int FUNC6(js_State *J)
{
	while (1) {
		J->lexline = J->line; /* save location of beginning of token */

		while (FUNC2(J->lexchar) || J->lexchar == '\n')
			FUNC3(J);

		if ((J->lexchar >= '0' && J->lexchar <= '9') || J->lexchar == '-')
			return FUNC4(J);

		switch (J->lexchar) {
		case ',': FUNC3(J); return ',';
		case ':': FUNC3(J); return ':';
		case '[': FUNC3(J); return '[';
		case ']': FUNC3(J); return ']';
		case '{': FUNC3(J); return '{';
		case '}': FUNC3(J); return '}';

		case '"':
			FUNC3(J);
			return FUNC5(J);

		case 'f':
			FUNC3(J); FUNC1(J, 'a'); FUNC1(J, 'l'); FUNC1(J, 's'); FUNC1(J, 'e');
			return TK_FALSE;

		case 'n':
			FUNC3(J); FUNC1(J, 'u'); FUNC1(J, 'l'); FUNC1(J, 'l');
			return TK_NULL;

		case 't':
			FUNC3(J); FUNC1(J, 'r'); FUNC1(J, 'u'); FUNC1(J, 'e');
			return TK_TRUE;

		case 0:
			return 0; /* EOF */
		}

		if (J->lexchar >= 0x20 && J->lexchar <= 0x7E)
			FUNC0(J, "unexpected character: '%c'", J->lexchar);
		FUNC0(J, "unexpected character: \\u%04X", J->lexchar);
	}
}