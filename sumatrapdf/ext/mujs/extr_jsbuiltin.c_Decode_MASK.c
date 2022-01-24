#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_4__ {char* s; } ;
typedef  TYPE_1__ js_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int) ; 

__attribute__((used)) static void FUNC10(js_State *J, const char *str, const char *reserved)
{
	js_Buffer *sb = NULL;
	int a, b;

	if (FUNC7(J)) {
		FUNC3(J, sb);
		FUNC6(J);
	}

	while (*str) {
		int c = (unsigned char) *str++;
		if (c != '%')
			FUNC5(J, &sb, c);
		else {
			if (!str[0] || !str[1])
				FUNC8(J, "truncated escape sequence");
			a = *str++;
			b = *str++;
			if (!FUNC0(a) || !FUNC0(b))
				FUNC8(J, "invalid escape sequence");
			c = FUNC1(a) << 4 | FUNC1(b);
			if (!FUNC9(reserved, c))
				FUNC5(J, &sb, c);
			else {
				FUNC5(J, &sb, '%');
				FUNC5(J, &sb, a);
				FUNC5(J, &sb, b);
			}
		}
	}
	FUNC5(J, &sb, 0);

	FUNC4(J, sb ? sb->s : "");
	FUNC2(J);
	FUNC3(J, sb);
}