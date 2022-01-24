#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_3__ {char* source; int flags; } ;
typedef  TYPE_1__ js_Regexp ;

/* Variables and functions */
 int JS_REGEXP_G ; 
 int JS_REGEXP_I ; 
 int JS_REGEXP_M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(js_State *J)
{
	js_Regexp *re;
	char *out;

	re = FUNC6(J, 0);

	out = FUNC2(J, FUNC10(re->source) + 6); /* extra space for //gim */
	FUNC9(out, "/");
	FUNC8(out, re->source);
	FUNC8(out, "/");
	if (re->flags & JS_REGEXP_G) FUNC8(out, "g");
	if (re->flags & JS_REGEXP_I) FUNC8(out, "i");
	if (re->flags & JS_REGEXP_M) FUNC8(out, "m");

	if (FUNC7(J)) {
		FUNC1(J, out);
		FUNC5(J);
	}
	FUNC3(J, 0);
	FUNC4(J, out);
	FUNC0(J);
	FUNC1(J, out);
}