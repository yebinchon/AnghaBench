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
typedef  int /*<<< orphan*/  pdf_obj ;

/* Variables and functions */
 int /*<<< orphan*/  JS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9(pdf_obj *action, const char *name)
{
	if (action)
	{
		pdf_obj *js = FUNC3(ctx, action, FUNC0(JS));
		if (js)
		{
			char *src = FUNC5(ctx, js);
			FUNC2(ctx, out, "    %s: {\n", name);
			FUNC8(src, 1);
			FUNC2(ctx, out, "    }\n", name);
			FUNC1(ctx, src);
		}
		else
		{
			FUNC2(ctx, out, "    %s: ", name);
			if (FUNC4(ctx, action))
				action = FUNC7(ctx, action);
			FUNC6(ctx, out, action, 1, 1);
			FUNC2(ctx, out, "\n");
		}
	}
}