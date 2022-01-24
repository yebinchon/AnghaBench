#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int lexchar; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char) ; 

__attribute__((used)) static int FUNC5(js_State *J)
{
	int x = 0;

	/* already consumed '\' */

	switch (J->lexchar) {
	default: FUNC0(J, "invalid escape sequence");
	case 'u':
		FUNC2(J);
		if (!FUNC1(J->lexchar)) return 1; else { x |= FUNC3(J->lexchar) << 12; FUNC2(J); }
		if (!FUNC1(J->lexchar)) return 1; else { x |= FUNC3(J->lexchar) << 8; FUNC2(J); }
		if (!FUNC1(J->lexchar)) return 1; else { x |= FUNC3(J->lexchar) << 4; FUNC2(J); }
		if (!FUNC1(J->lexchar)) return 1; else { x |= FUNC3(J->lexchar); FUNC2(J); }
		FUNC4(J, x);
		break;
	case '"': FUNC4(J, '"'); FUNC2(J); break;
	case '\\': FUNC4(J, '\\'); FUNC2(J); break;
	case '/': FUNC4(J, '/'); FUNC2(J); break;
	case 'b': FUNC4(J, '\b'); FUNC2(J); break;
	case 'f': FUNC4(J, '\f'); FUNC2(J); break;
	case 'n': FUNC4(J, '\n'); FUNC2(J); break;
	case 'r': FUNC4(J, '\r'); FUNC2(J); break;
	case 't': FUNC4(J, '\t'); FUNC2(J); break;
	}
	return 0;
}