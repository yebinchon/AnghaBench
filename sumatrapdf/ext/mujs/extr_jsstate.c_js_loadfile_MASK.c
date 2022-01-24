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
 int FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(js_State *J, const char *filename)
{
	FILE *f;
	char *s;
	int n, t;

	f = FUNC1(filename, "rb");
	if (!f) {
		FUNC6(J, "cannot open file '%s': %s", filename, FUNC12(errno));
	}

	if (FUNC3(f, 0, SEEK_END) < 0) {
		FUNC0(f);
		FUNC6(J, "cannot seek in file '%s': %s", filename, FUNC12(errno));
	}

	n = FUNC4(f);
	if (n < 0) {
		FUNC0(f);
		FUNC6(J, "cannot tell in file '%s': %s", filename, FUNC12(errno));
	}

	if (FUNC3(f, 0, SEEK_SET) < 0) {
		FUNC0(f);
		FUNC6(J, "cannot seek in file '%s': %s", filename, FUNC12(errno));
	}

	if (FUNC11(J)) {
		FUNC0(f);
		FUNC10(J);
	}
	s = FUNC9(J, n + 1); /* add space for string terminator */
	FUNC5(J);

	t = FUNC2(s, 1, (size_t)n, f);
	if (t != n) {
		FUNC7(J, s);
		FUNC0(f);
		FUNC6(J, "cannot read data from file '%s': %s", filename, FUNC12(errno));
	}

	s[n] = 0; /* zero-terminate string containing file data */

	if (FUNC11(J)) {
		FUNC7(J, s);
		FUNC0(f);
		FUNC10(J);
	}

	FUNC8(J, filename, s);

	FUNC7(J, s);
	FUNC0(f);
	FUNC5(J);
}