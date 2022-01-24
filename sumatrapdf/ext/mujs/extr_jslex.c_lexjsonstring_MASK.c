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
struct TYPE_12__ {char lexchar; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int TK_STRING ; 
 scalar_t__ FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC9(js_State *J)
{
	const char *s;

	FUNC7(J);

	while (J->lexchar != '"') {
		if (J->lexchar == 0)
			FUNC1(J, "unterminated string");
		else if (J->lexchar < 32)
			FUNC1(J, "invalid control character in string");
		else if (FUNC0(J, '\\'))
			FUNC5(J);
		else {
			FUNC8(J, J->lexchar);
			FUNC3(J);
		}
	}
	FUNC2(J, '"');

	s = FUNC6(J);

	J->text = FUNC4(J, s);
	return TK_STRING;
}