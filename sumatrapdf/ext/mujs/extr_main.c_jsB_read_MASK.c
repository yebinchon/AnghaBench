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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(js_State *J)
{
	const char *filename = FUNC8(J, 1);
	FILE *f;
	char *s;
	int n, t;

	f = FUNC1(filename, "rb");
	if (!f) {
		FUNC6(J, "cannot open file '%s': %s", filename, FUNC10(errno));
	}

	if (FUNC4(f, 0, SEEK_END) < 0) {
		FUNC0(f);
		FUNC6(J, "cannot seek in file '%s': %s", filename, FUNC10(errno));
	}

	n = FUNC5(f);
	if (n < 0) {
		FUNC0(f);
		FUNC6(J, "cannot tell in file '%s': %s", filename, FUNC10(errno));
	}

	if (FUNC4(f, 0, SEEK_SET) < 0) {
		FUNC0(f);
		FUNC6(J, "cannot seek in file '%s': %s", filename, FUNC10(errno));
	}

	s = FUNC9(n + 1);
	if (!s) {
		FUNC0(f);
		FUNC6(J, "out of memory");
	}

	t = FUNC2(s, 1, n, f);
	if (t != n) {
		FUNC3(s);
		FUNC0(f);
		FUNC6(J, "cannot read data from file '%s': %s", filename, FUNC10(errno));
	}
	s[n] = 0;

	FUNC7(J, s);
	FUNC3(s);
	FUNC0(f);
}