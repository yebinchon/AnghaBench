#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  prog; scalar_t__ last; } ;
typedef  TYPE_2__ js_Regexp ;
struct TYPE_9__ {TYPE_1__* sub; } ;
struct TYPE_7__ {char* sp; char* ep; } ;
typedef  TYPE_3__ Resub ;

/* Variables and functions */
 int JS_REGEXP_G ; 
 int /*<<< orphan*/  REG_NOTBOL ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (char const*) ; 

__attribute__((used)) static void FUNC15(js_State *J)
{
	js_Regexp *re;
	const char *text;
	int len;
	const char *a, *b, *c, *e;
	Resub m;

	text = FUNC0(J, 0);

	if (FUNC4(J, 1))
		FUNC2(J, 1);
	else if (FUNC5(J, 1))
		FUNC7(J, "", 0);
	else
		FUNC7(J, FUNC13(J, 1), 0);

	re = FUNC12(J, -1);
	if (!(re->flags & JS_REGEXP_G)) {
		FUNC1(J, re, text);
		return;
	}

	re->last = 0;

	FUNC6(J);

	len = 0;
	a = text;
	e = text + FUNC14(text);
	while (a <= e) {
		if (FUNC3(J, re->prog, a, &m, a > text ? REG_NOTBOL : 0))
			break;

		b = m.sub[0].sp;
		c = m.sub[0].ep;

		FUNC9(J, b, c - b);
		FUNC11(J, -2, len++);

		a = c;
		if (c - b == 0)
			++a;
	}

	if (len == 0) {
		FUNC8(J, 1);
		FUNC10(J);
	}
}