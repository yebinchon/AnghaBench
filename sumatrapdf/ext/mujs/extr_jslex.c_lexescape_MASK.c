#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int lexchar; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 

__attribute__((used)) static int FUNC6(js_State *J)
{
	int x = 0;

	/* already consumed '\' */

	if (FUNC0(J, '\n'))
		return 0;

	switch (J->lexchar) {
	case 0: FUNC1(J, "unterminated escape sequence");
	case 'u':
		FUNC3(J);
		if (!FUNC2(J->lexchar)) return 1; else { x |= FUNC4(J->lexchar) << 12; FUNC3(J); }
		if (!FUNC2(J->lexchar)) return 1; else { x |= FUNC4(J->lexchar) << 8; FUNC3(J); }
		if (!FUNC2(J->lexchar)) return 1; else { x |= FUNC4(J->lexchar) << 4; FUNC3(J); }
		if (!FUNC2(J->lexchar)) return 1; else { x |= FUNC4(J->lexchar); FUNC3(J); }
		FUNC5(J, x);
		break;
	case 'x':
		FUNC3(J);
		if (!FUNC2(J->lexchar)) return 1; else { x |= FUNC4(J->lexchar) << 4; FUNC3(J); }
		if (!FUNC2(J->lexchar)) return 1; else { x |= FUNC4(J->lexchar); FUNC3(J); }
		FUNC5(J, x);
		break;
	case '0': FUNC5(J, 0); FUNC3(J); break;
	case '\\': FUNC5(J, '\\'); FUNC3(J); break;
	case '\'': FUNC5(J, '\''); FUNC3(J); break;
	case '"': FUNC5(J, '"'); FUNC3(J); break;
	case 'b': FUNC5(J, '\b'); FUNC3(J); break;
	case 'f': FUNC5(J, '\f'); FUNC3(J); break;
	case 'n': FUNC5(J, '\n'); FUNC3(J); break;
	case 'r': FUNC5(J, '\r'); FUNC3(J); break;
	case 't': FUNC5(J, '\t'); FUNC3(J); break;
	case 'v': FUNC5(J, '\v'); FUNC3(J); break;
	default: FUNC5(J, J->lexchar); FUNC3(J); break;
	}
	return 0;
}