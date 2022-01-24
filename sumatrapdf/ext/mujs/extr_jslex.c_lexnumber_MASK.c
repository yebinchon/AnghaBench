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
struct TYPE_7__ {char* source; char lexchar; int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int TK_NUMBER ; 
 scalar_t__ FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(js_State *J)
{
	const char *s = J->source - 1;

	if (FUNC0(J, '0')) {
		if (FUNC0(J, 'x') || FUNC0(J, 'X')) {
			J->number = FUNC6(J);
			return TK_NUMBER;
		}
		if (FUNC2(J->lexchar))
			FUNC1(J, "number with leading zero");
		if (FUNC0(J, '.')) {
			while (FUNC2(J->lexchar))
				FUNC4(J);
		}
	} else if (FUNC0(J, '.')) {
		if (!FUNC2(J->lexchar))
			return '.';
		while (FUNC2(J->lexchar))
			FUNC4(J);
	} else {
		while (FUNC2(J->lexchar))
			FUNC4(J);
		if (FUNC0(J, '.')) {
			while (FUNC2(J->lexchar))
				FUNC4(J);
		}
	}

	if (FUNC0(J, 'e') || FUNC0(J, 'E')) {
		if (J->lexchar == '-' || J->lexchar == '+')
			FUNC4(J);
		if (FUNC2(J->lexchar))
			while (FUNC2(J->lexchar))
				FUNC4(J);
		else
			FUNC1(J, "missing exponent");
	}

	if (FUNC3(J->lexchar))
		FUNC1(J, "number with letter suffix");

	J->number = FUNC5(s, NULL);
	return TK_NUMBER;
}