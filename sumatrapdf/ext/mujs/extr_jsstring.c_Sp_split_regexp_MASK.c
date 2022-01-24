#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_7__ {int /*<<< orphan*/  prog; } ;
typedef  TYPE_2__ js_Regexp ;
struct TYPE_8__ {int nsub; TYPE_1__* sub; } ;
struct TYPE_6__ {char* sp; char* ep; } ;
typedef  TYPE_3__ Resub ;

/* Variables and functions */
 int /*<<< orphan*/  REG_NOTBOL ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11(js_State *J)
{
	js_Regexp *re;
	const char *text;
	int limit, len, k;
	const char *p, *a, *b, *c, *e;
	Resub m;

	text = FUNC0(J, 0);
	re = FUNC9(J, 1);
	limit = FUNC2(J, 2) ? FUNC8(J, 2) : 1 << 30;

	FUNC3(J);
	len = 0;

	e = text + FUNC10(text);

	/* splitting the empty string */
	if (e == text) {
		if (FUNC1(J, re->prog, text, &m, 0)) {
			if (len == limit) return;
			FUNC4(J, "");
			FUNC7(J, -2, 0);
		}
		return;
	}

	p = a = text;
	while (a < e) {
		if (FUNC1(J, re->prog, a, &m, a > text ? REG_NOTBOL : 0))
			break; /* no match */

		b = m.sub[0].sp;
		c = m.sub[0].ep;

		/* empty string at end of last match */
		if (b == p) {
			++a;
			continue;
		}

		if (len == limit) return;
		FUNC5(J, p, b - p);
		FUNC7(J, -2, len++);

		for (k = 1; k < m.nsub; ++k) {
			if (len == limit) return;
			FUNC5(J, m.sub[k].sp, m.sub[k].ep - m.sub[k].sp);
			FUNC7(J, -2, len++);
		}

		a = p = c;
	}

	if (len == limit) return;
	FUNC6(J, p);
	FUNC7(J, -2, len);
}