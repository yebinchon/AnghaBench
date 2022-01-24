#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int lexchar; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int TK_STRING ; 
 scalar_t__ FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char) ; 

__attribute__((used)) static int FUNC9(js_State *J)
{
	const char *s;

	int q = J->lexchar;
	FUNC3(J);

	FUNC7(J);

	while (J->lexchar != q) {
		if (J->lexchar == 0 || J->lexchar == '\n')
			FUNC1(J, "string not terminated");
		if (FUNC0(J, '\\')) {
			if (FUNC5(J))
				FUNC1(J, "malformed escape sequence");
		} else {
			FUNC8(J, J->lexchar);
			FUNC3(J);
		}
	}
	FUNC2(J, q);

	s = FUNC6(J);

	J->text = FUNC4(J, s);
	return TK_STRING;
}