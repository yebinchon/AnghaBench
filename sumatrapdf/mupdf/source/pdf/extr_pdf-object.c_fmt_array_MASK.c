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
struct fmt {int col; int /*<<< orphan*/  indent; scalar_t__ tight; } ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fmt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fmt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fmt*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct fmt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(fz_context *ctx, struct fmt *fmt, pdf_obj *obj)
{
	int i, n;

	n = FUNC5(ctx, obj);
	if (fmt->tight) {
		FUNC2(ctx, fmt, '[');
		for (i = 0; i < n; i++) {
			FUNC1(ctx, fmt, FUNC4(ctx, obj, i));
			FUNC3(ctx, fmt);
		}
		FUNC2(ctx, fmt, ']');
	}
	else {
		FUNC2(ctx, fmt, '[');
		fmt->indent ++;
		for (i = 0; i < n; i++) {
			if (fmt->col > 60) {
				FUNC2(ctx, fmt, '\n');
				FUNC0(ctx, fmt);
			} else {
				FUNC2(ctx, fmt, ' ');
			}
			FUNC1(ctx, fmt, FUNC4(ctx, obj, i));
		}
		fmt->indent --;
		FUNC2(ctx, fmt, ' ');
		FUNC2(ctx, fmt, ']');
		FUNC3(ctx, fmt);
	}
}