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
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_6__ {char* s; } ;
typedef  TYPE_1__ js_Buffer ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__**,char const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__**,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__**,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (char const*) ; 
 char* FUNC18 (char const*,char const*) ; 

__attribute__((used)) static void FUNC19(js_State *J)
{
	const char *source, *needle, *s, *r;
	js_Buffer *sb = NULL;
	int n;

	source = FUNC0(J, 0);
	needle = FUNC15(J, 1);

	s = FUNC18(source, needle);
	if (!s) {
		FUNC2(J, 0);
		return;
	}
	n = FUNC17(needle);

	if (FUNC5(J, 2)) {
		FUNC2(J, 2);
		FUNC10(J);
		FUNC7(J, s, n); /* arg 1: substring that matched */
		FUNC8(J, s - source); /* arg 2: offset within search string */
		FUNC2(J, 0); /* arg 3: search string */
		FUNC1(J, 3);
		r = FUNC15(J, -1);
		FUNC12(J, &sb, source, s);
		FUNC13(J, &sb, r);
		FUNC13(J, &sb, s + n);
		FUNC11(J, &sb, 0);
		FUNC6(J, 1);
	} else {
		r = FUNC15(J, 2);
		FUNC12(J, &sb, source, s);
		while (*r) {
			if (*r == '$') {
				switch (*(++r)) {
				case 0: --r; /* end of string; back up */
				/* fallthrough */
				case '$': FUNC11(J, &sb, '$'); break;
				case '&': FUNC12(J, &sb, s, s + n); break;
				case '`': FUNC12(J, &sb, source, s); break;
				case '\'': FUNC13(J, &sb, s + n); break;
				default: FUNC11(J, &sb, '$'); FUNC11(J, &sb, *r); break;
				}
				++r;
			} else {
				FUNC11(J, &sb, *r++);
			}
		}
		FUNC13(J, &sb, s + n);
		FUNC11(J, &sb, 0);
	}

	if (FUNC16(J)) {
		FUNC4(J, sb);
		FUNC14(J);
	}
	FUNC9(J, sb ? sb->s : "");
	FUNC3(J);
	FUNC4(J, sb);
}