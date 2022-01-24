#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_12__ {int flags; int /*<<< orphan*/  prog; scalar_t__ last; } ;
typedef  TYPE_2__ js_Regexp ;
struct TYPE_13__ {char* s; } ;
typedef  TYPE_3__ js_Buffer ;
struct TYPE_14__ {int nsub; TYPE_1__* sub; } ;
struct TYPE_11__ {char* sp; char const* ep; } ;
typedef  TYPE_4__ Resub ;

/* Variables and functions */
 int JS_REGEXP_G ; 
 int /*<<< orphan*/  REG_NOTBOL ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__**,char const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__**,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__**,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *,int) ; 
 char* FUNC17 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(js_State *J)
{
	js_Regexp *re;
	const char *source, *s, *r;
	js_Buffer *sb = NULL;
	int n, x;
	Resub m;

	source = FUNC0(J, 0);
	re = FUNC16(J, 1);

	if (FUNC3(J, re->prog, source, &m, 0)) {
		FUNC2(J, 0);
		return;
	}

	re->last = 0;

loop:
	s = m.sub[0].sp;
	n = m.sub[0].ep - m.sub[0].sp;

	if (FUNC6(J, 2)) {
		FUNC2(J, 2);
		FUNC11(J);
		for (x = 0; m.sub[x].sp; ++x) /* arg 0..x: substring and subexps that matched */
			FUNC8(J, m.sub[x].sp, m.sub[x].ep - m.sub[x].sp);
		FUNC9(J, s - source); /* arg x+2: offset within search string */
		FUNC2(J, 0); /* arg x+3: search string */
		FUNC1(J, 2 + x);
		r = FUNC17(J, -1);
		FUNC13(J, &sb, source, s);
		FUNC14(J, &sb, r);
		FUNC7(J, 1);
	} else {
		r = FUNC17(J, 2);
		FUNC13(J, &sb, source, s);
		while (*r) {
			if (*r == '$') {
				switch (*(++r)) {
				case 0: --r; /* end of string; back up */
				/* fallthrough */
				case '$': FUNC12(J, &sb, '$'); break;
				case '`': FUNC13(J, &sb, source, s); break;
				case '\'': FUNC14(J, &sb, s + n); break;
				case '&':
					FUNC13(J, &sb, s, s + n);
					break;
				case '0': case '1': case '2': case '3': case '4':
				case '5': case '6': case '7': case '8': case '9':
					x = *r - '0';
					if (r[1] >= '0' && r[1] <= '9')
						x = x * 10 + *(++r) - '0';
					if (x > 0 && x < m.nsub) {
						FUNC13(J, &sb, m.sub[x].sp, m.sub[x].ep);
					} else {
						FUNC12(J, &sb, '$');
						if (x > 10) {
							FUNC12(J, &sb, '0' + x / 10);
							FUNC12(J, &sb, '0' + x % 10);
						} else {
							FUNC12(J, &sb, '0' + x);
						}
					}
					break;
				default:
					FUNC12(J, &sb, '$');
					FUNC12(J, &sb, *r);
					break;
				}
				++r;
			} else {
				FUNC12(J, &sb, *r++);
			}
		}
	}

	if (re->flags & JS_REGEXP_G) {
		source = m.sub[0].ep;
		if (n == 0) {
			if (*source)
				FUNC12(J, &sb, *source++);
			else
				goto end;
		}
		if (!FUNC3(J, re->prog, source, &m, REG_NOTBOL))
			goto loop;
	}

end:
	FUNC14(J, &sb, s + n);
	FUNC12(J, &sb, 0);

	if (FUNC18(J)) {
		FUNC5(J, sb);
		FUNC15(J);
	}
	FUNC10(J, sb ? sb->s : "");
	FUNC4(J);
	FUNC5(J, sb);
}