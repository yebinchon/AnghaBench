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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(js_State *J, const char *filename, int minify)
{
	FILE *f;
	char *s;
	int n, t;

	f = FUNC1(filename, "rb");
	if (!f) {
		FUNC6(J, "cannot open file: '%s'", filename);
	}

	if (FUNC3(f, 0, SEEK_END) < 0) {
		FUNC0(f);
		FUNC6(J, "cannot seek in file: '%s'", filename);
	}

	n = FUNC4(f);
	if (n < 0) {
		FUNC0(f);
		FUNC6(J, "cannot tell in file: '%s'", filename);
	}

	if (FUNC3(f, 0, SEEK_SET) < 0) {
		FUNC0(f);
		FUNC6(J, "cannot seek in file: '%s'", filename);
	}

	s = FUNC8(J, n + 1); /* add space for string terminator */
	if (!s) {
		FUNC0(f);
		FUNC6(J, "cannot allocate storage for file contents: '%s'", filename);
	}

	t = FUNC2(s, 1, (size_t)n, f);
	if (t != n) {
		FUNC7(J, s);
		FUNC0(f);
		FUNC6(J, "cannot read data from file: '%s'", filename);
	}

	s[n] = 0; /* zero-terminate string containing file data */

	if (FUNC11(J)) {
		FUNC7(J, s);
		FUNC0(f);
		FUNC10(J);
	}

	FUNC9(J, filename, s, minify);

	FUNC7(J, s);
	FUNC0(f);
	FUNC5(J);
}