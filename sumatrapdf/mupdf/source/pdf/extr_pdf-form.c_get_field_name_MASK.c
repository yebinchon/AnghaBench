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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Parent ; 
 int /*<<< orphan*/  T ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6(fz_context *ctx, pdf_obj *field, int spare)
{
	char *res = NULL;
	pdf_obj *parent = FUNC2(ctx, field, FUNC0(Parent));
	const char *lname = FUNC3(ctx, field, FUNC0(T));
	int llen = (int)FUNC5(lname);

	/*
	 * If we found a name at this point in the field hierarchy
	 * then we'll need extra space for it and a dot
	 */
	if (llen)
		spare += llen+1;

	if (parent)
	{
		res = FUNC6(ctx, parent, spare);
	}
	else
	{
		res = FUNC1(ctx, spare+1);
		res[0] = 0;
	}

	if (llen)
	{
		if (res[0])
			FUNC4(res, ".");

		FUNC4(res, lname);
	}

	return res;
}