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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_7__ {double number; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ u; } ;
typedef  TYPE_2__ js_Object ;
struct TYPE_9__ {char* s; } ;
typedef  TYPE_3__ js_Buffer ;

/* Variables and functions */
 scalar_t__ JS_CNUMBER ; 
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__**,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 double FUNC14 (int,int) ; 

__attribute__((used)) static void FUNC15(js_State *J)
{
	char buf[100];
	js_Object *self = FUNC11(J, 0);
	int radix = FUNC5(J, 1) ? 10 : FUNC10(J, 1);
	if (self->type != JS_CNUMBER)
		FUNC13(J, "not a number");
	if (radix == 10) {
		FUNC6(J, FUNC2(J, buf, self->u.number));
		return;
	}
	if (radix < 2 || radix > 36)
		FUNC8(J, "invalid radix");

	/* lame number to string conversion for any radix from 2 to 36 */
	{
		static const char digits[] = "0123456789abcdefghijklmnopqrstuvwxyz";
		double number = self->u.number;
		int sign = self->u.number < 0;
		js_Buffer *sb = NULL;
		uint64_t u, limit = ((uint64_t)1<<52);

		int ndigits, exp, point;

		if (number == 0) { FUNC6(J, "0"); return; }
		if (FUNC1(number)) { FUNC6(J, "NaN"); return; }
		if (FUNC0(number)) { FUNC6(J, sign ? "-Infinity" : "Infinity"); return; }

		if (sign)
			number = -number;

		/* fit as many digits as we want in an int */
		exp = 0;
		while (number * FUNC14(radix, exp) > limit)
			--exp;
		while (number * FUNC14(radix, exp+1) < limit)
			++exp;
		u = number * FUNC14(radix, exp) + 0.5;

		/* trim trailing zeros */
		while (u > 0 && (u % radix) == 0) {
			u /= radix;
			--exp;
		}

		/* serialize digits */
		ndigits = 0;
		while (u > 0) {
			buf[ndigits++] = digits[u % radix];
			u /= radix;
		}
		point = ndigits - exp;

		if (FUNC12(J)) {
			FUNC4(J, sb);
			FUNC9(J);
		}

		if (sign)
			FUNC7(J, &sb, '-');

		if (point <= 0) {
			FUNC7(J, &sb, '0');
			FUNC7(J, &sb, '.');
			while (point++ < 0)
				FUNC7(J, &sb, '0');
			while (ndigits-- > 0)
				FUNC7(J, &sb, buf[ndigits]);
		} else {
			while (ndigits-- > 0) {
				FUNC7(J, &sb, buf[ndigits]);
				if (--point == 0 && ndigits > 0)
					FUNC7(J, &sb, '.');
			}
			while (point-- > 0)
				FUNC7(J, &sb, '0');
		}

		FUNC7(J, &sb, 0);
		FUNC6(J, sb->s);

		FUNC3(J);
		FUNC4(J, sb);
	}
}