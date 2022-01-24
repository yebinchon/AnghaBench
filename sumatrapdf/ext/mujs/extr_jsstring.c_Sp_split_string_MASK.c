#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  Rune ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (char const*,char const*) ; 

__attribute__((used)) static void FUNC11(js_State *J)
{
	const char *str = FUNC1(J, 0);
	const char *sep = FUNC8(J, 1);
	int limit = FUNC2(J, 2) ? FUNC7(J, 2) : 1 << 30;
	int i, n;

	FUNC3(J);

	n = FUNC9(sep);

	/* empty string */
	if (n == 0) {
		Rune rune;
		for (i = 0; *str && i < limit; ++i) {
			n = FUNC0(&rune, str);
			FUNC4(J, str, n);
			FUNC6(J, -2, i);
			str += n;
		}
		return;
	}

	for (i = 0; str && i < limit; ++i) {
		const char *s = FUNC10(str, sep);
		if (s) {
			FUNC4(J, str, s-str);
			FUNC6(J, -2, i);
			str = s + n;
		} else {
			FUNC5(J, str);
			FUNC6(J, -2, i);
			str = NULL;
		}
	}
}