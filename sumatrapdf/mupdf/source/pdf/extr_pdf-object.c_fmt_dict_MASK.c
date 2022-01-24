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
struct fmt {int /*<<< orphan*/  indent; scalar_t__ tight; } ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fmt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fmt*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fmt*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct fmt*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
	int i, n;
	pdf_obj *key, *val;

	n = FUNC7(ctx, obj);
	if (fmt->tight) {
		FUNC3(ctx, fmt, "<<");
		for (i = 0; i < n; i++) {
			FUNC1(ctx, fmt, FUNC5(ctx, obj, i));
			FUNC4(ctx, fmt);
			FUNC1(ctx, fmt, FUNC6(ctx, obj, i));
			FUNC4(ctx, fmt);
		}
		FUNC3(ctx, fmt, ">>");
	}
	else {
		FUNC3(ctx, fmt, "<<\n");
		fmt->indent ++;
		for (i = 0; i < n; i++) {
			key = FUNC5(ctx, obj, i);
			val = FUNC6(ctx, obj, i);
			FUNC0(ctx, fmt);
			FUNC1(ctx, fmt, key);
			FUNC2(ctx, fmt, ' ');
			if (!FUNC9(ctx, val) && FUNC8(ctx, val))
				fmt->indent ++;
			FUNC1(ctx, fmt, val);
			FUNC2(ctx, fmt, '\n');
			if (!FUNC9(ctx, val) && FUNC8(ctx, val))
				fmt->indent --;
		}
		fmt->indent --;
		FUNC0(ctx, fmt);
		FUNC3(ctx, fmt, ">>");
	}
}