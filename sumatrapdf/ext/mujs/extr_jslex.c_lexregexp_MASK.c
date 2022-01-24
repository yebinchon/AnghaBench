#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char lexchar; scalar_t__ number; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 scalar_t__ JS_REGEXP_G ; 
 scalar_t__ JS_REGEXP_I ; 
 scalar_t__ JS_REGEXP_M ; 
 int TK_REGEXP ; 
 scalar_t__ FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char) ; 

__attribute__((used)) static int FUNC9(js_State *J)
{
	const char *s;
	int g, m, i;
	int inclass = 0;

	/* already consumed initial '/' */

	FUNC7(J);

	/* regexp body */
	while (J->lexchar != '/' || inclass) {
		if (J->lexchar == 0 || J->lexchar == '\n') {
			FUNC1(J, "regular expression not terminated");
		} else if (FUNC0(J, '\\')) {
			if (FUNC0(J, '/')) {
				FUNC8(J, '/');
			} else {
				FUNC8(J, '\\');
				if (J->lexchar == 0 || J->lexchar == '\n')
					FUNC1(J, "regular expression not terminated");
				FUNC8(J, J->lexchar);
				FUNC4(J);
			}
		} else {
			if (J->lexchar == '[' && !inclass)
				inclass = 1;
			if (J->lexchar == ']' && inclass)
				inclass = 0;
			FUNC8(J, J->lexchar);
			FUNC4(J);
		}
	}
	FUNC2(J, '/');

	s = FUNC6(J);

	/* regexp flags */
	g = i = m = 0;

	while (FUNC3(J->lexchar)) {
		if (FUNC0(J, 'g')) ++g;
		else if (FUNC0(J, 'i')) ++i;
		else if (FUNC0(J, 'm')) ++m;
		else FUNC1(J, "illegal flag in regular expression: %c", J->lexchar);
	}

	if (g > 1 || i > 1 || m > 1)
		FUNC1(J, "duplicated flag in regular expression");

	J->text = FUNC5(J, s);
	J->number = 0;
	if (g) J->number += JS_REGEXP_G;
	if (i) J->number += JS_REGEXP_I;
	if (m) J->number += JS_REGEXP_M;
	return TK_REGEXP;
}