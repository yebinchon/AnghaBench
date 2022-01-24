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
 int /*<<< orphan*/  Exclude ; 
 int /*<<< orphan*/  Kids ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(fz_context *ctx, pdf_obj *array, pdf_obj *field)
{
	pdf_obj *kids = FUNC4(ctx, field, FUNC0(Kids));
	pdf_obj *exclude = FUNC4(ctx, field, FUNC0(Exclude));

	if (exclude)
		return;

	FUNC3(ctx, array, field);

	if (kids)
	{
		int i, n = FUNC2(ctx, kids);

		for (i = 0; i < n; i++)
			FUNC5(ctx, array, FUNC1(ctx, kids, i));
	}
}