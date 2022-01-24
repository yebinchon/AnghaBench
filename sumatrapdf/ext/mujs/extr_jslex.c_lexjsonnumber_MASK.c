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
struct TYPE_6__ {char* source; char lexchar; int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int TK_NUMBER ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(js_State *J)
{
	const char *s = J->source - 1;

	if (J->lexchar == '-')
		FUNC3(J);

	if (J->lexchar == '0')
		FUNC3(J);
	else if (J->lexchar >= '1' && J->lexchar <= '9')
		while (FUNC0(J->lexchar))
			FUNC3(J);
	else
		FUNC2(J, "unexpected non-digit");

	if (FUNC1(J, '.')) {
		if (FUNC0(J->lexchar))
			while (FUNC0(J->lexchar))
				FUNC3(J);
		else
			FUNC2(J, "missing digits after decimal point");
	}

	if (FUNC1(J, 'e') || FUNC1(J, 'E')) {
		if (J->lexchar == '-' || J->lexchar == '+')
			FUNC3(J);
		if (FUNC0(J->lexchar))
			while (FUNC0(J->lexchar))
				FUNC3(J);
		else
			FUNC2(J, "missing digits after exponent indicator");
	}

	J->number = FUNC4(s, NULL);
	return TK_NUMBER;
}