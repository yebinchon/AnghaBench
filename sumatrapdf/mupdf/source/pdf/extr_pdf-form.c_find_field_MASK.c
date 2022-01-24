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
 int /*<<< orphan*/  T ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static pdf_obj *FUNC6(fz_context *ctx, pdf_obj *dict, const char *name, int len)
{
	int i, n = FUNC3(ctx, dict);
	for (i = 0; i < n; i++)
	{
		pdf_obj *field = FUNC2(ctx, dict, i);
		const char *part = FUNC4(ctx, field, FUNC0(T));
		if (FUNC5(part) == (size_t)len && !FUNC1(part, name, len))
			return field;
	}
	return NULL;
}