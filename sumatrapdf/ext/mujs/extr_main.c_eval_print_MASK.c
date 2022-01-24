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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(js_State *J, const char *source)
{
	if (FUNC3(J, "[stdin]", source)) {
		FUNC0(stderr, "%s\n", FUNC7(J, -1, "Error"));
		FUNC4(J, 1);
		return 1;
	}
	FUNC5(J);
	if (FUNC2(J, 0)) {
		FUNC0(stderr, "%s\n", FUNC7(J, -1, "Error"));
		FUNC4(J, 1);
		return 1;
	}
	if (FUNC1(J, -1)) {
		FUNC8("%s\n", FUNC6(J, -1, "can't convert to string"));
	}
	FUNC4(J, 1);
	return 0;
}