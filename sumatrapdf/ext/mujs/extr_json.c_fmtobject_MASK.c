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
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  js_Object ;
struct TYPE_7__ {int n; } ;
typedef  TYPE_1__ js_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__**,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__**,char const*,char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__**,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC12(js_State *J, js_Buffer **sb, js_Object *obj, const char *gap, int level)
{
	const char *key;
	int save;
	int i, n;

	n = FUNC3(J) - 1;
	for (i = 4; i < n; ++i)
		if (FUNC4(J, i))
			if (FUNC10(J, i) == FUNC10(J, -1))
				FUNC11(J, "cyclic object value");

	n = 0;
	FUNC8(J, sb, '{');
	FUNC7(J, -1, 1);
	while ((key = FUNC5(J, -1))) {
		save = (*sb)->n;
		if (n) FUNC8(J, sb, ',');
		if (gap) FUNC0(J, sb, gap, level + 1);
		FUNC1(J, sb, key);
		FUNC8(J, sb, ':');
		if (gap)
			FUNC8(J, sb, ' ');
		FUNC9(J);
		if (!FUNC2(J, sb, key, gap, level + 1))
			(*sb)->n = save;
		else
			++n;
		FUNC9(J);
	}
	FUNC6(J, 1);
	if (gap && n) FUNC0(J, sb, gap, level);
	FUNC8(J, sb, '}');
}