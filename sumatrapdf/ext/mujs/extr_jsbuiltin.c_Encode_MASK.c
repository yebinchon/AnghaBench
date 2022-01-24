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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__**,char const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,int) ; 

__attribute__((used)) static void FUNC7(js_State *J, const char *str, const char *unescaped)
{
	js_Buffer *sb = NULL;

	static const char *HEX = "0123456789ABCDEF";

	if (FUNC5(J)) {
		FUNC1(J, sb);
		FUNC4(J);
	}

	while (*str) {
		int c = (unsigned char) *str++;
		if (FUNC6(unescaped, c))
			FUNC3(J, &sb, c);
		else {
			FUNC3(J, &sb, '%');
			FUNC3(J, &sb, HEX[(c >> 4) & 0xf]);
			FUNC3(J, &sb, HEX[c & 0xf]);
		}
	}
	FUNC3(J, &sb, 0);

	FUNC2(J, sb ? sb->s : "");
	FUNC0(J);
	FUNC1(J, sb);
}