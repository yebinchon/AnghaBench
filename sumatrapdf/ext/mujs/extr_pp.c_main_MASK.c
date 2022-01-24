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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

int
FUNC10(int argc, char **argv)
{
	js_State *J;
	int minify = 0;
	int i;

	J = FUNC3(NULL, NULL, 0);

	for (i = 1; i < argc; ++i) {
		if (!FUNC9(argv[i], "-m"))
			minify = 1;
		else if (!FUNC9(argv[i], "-mm"))
			minify = 2;
		else if (!FUNC9(argv[i], "-s"))
			minify = 3;
		else {
			if (FUNC7(J)) {
				FUNC6(J, FUNC8(J, -1, "Error"));
				FUNC4(J, 1);
				continue;
			}
			FUNC5(J, argv[i], minify);
			FUNC0(J);
		}
	}

	FUNC2(J, 0);
	FUNC1(J);

	return 0;
}