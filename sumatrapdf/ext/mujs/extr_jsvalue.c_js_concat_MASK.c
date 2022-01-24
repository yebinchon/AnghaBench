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
 int /*<<< orphan*/  JS_HNONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 double FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 
 scalar_t__ FUNC14 (char const*) ; 

void FUNC15(js_State *J)
{
	FUNC9(J, -2, JS_HNONE);
	FUNC9(J, -1, JS_HNONE);

	if (FUNC2(J, -2) || FUNC2(J, -1)) {
		const char *sa = FUNC10(J, -2);
		const char *sb = FUNC10(J, -1);
		/* TODO: create js_String directly */
		char *sab = FUNC3(J, FUNC14(sa) + FUNC14(sb) + 1);
		FUNC13(sab, sa);
		FUNC12(sab, sb);
		if (FUNC11(J)) {
			FUNC1(J, sab);
			FUNC7(J);
		}
		FUNC4(J, 2);
		FUNC6(J, sab);
		FUNC0(J);
		FUNC1(J, sab);
	} else {
		double x = FUNC8(J, -2);
		double y = FUNC8(J, -1);
		FUNC4(J, 2);
		FUNC5(J, x + y);
	}
}