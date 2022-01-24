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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Kids ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*) ; 

pdf_obj *FUNC5(fz_context *ctx, pdf_obj *form, const char *name)
{
	const char *dot;
	const char *namep;
	pdf_obj *dict = NULL;
	int len;

	/* Process the fully qualified field name which has
	* the partial names delimited by '.'. Pretend there
	* was a preceding '.' to simplify the loop */
	dot = name - 1;

	while (dot && form)
	{
		namep = dot + 1;
		dot = FUNC3(namep, '.');
		len = dot ? dot - namep : (int)FUNC4(namep);
		dict = FUNC1(ctx, form, namep, len);
		if (dot)
			form = FUNC2(ctx, dict, FUNC0(Kids));
	}

	return dict;
}