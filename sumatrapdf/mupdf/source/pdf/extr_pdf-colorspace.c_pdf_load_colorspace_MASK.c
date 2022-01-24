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
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int /*<<< orphan*/  fz_drop_colorspace_imp ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

fz_colorspace *
FUNC3(fz_context *ctx, pdf_obj *obj)
{
	fz_colorspace *cs;

	if ((cs = FUNC0(ctx, fz_drop_colorspace_imp, obj)) != NULL)
	{
		return cs;
	}

	cs = FUNC1(ctx, obj);

	FUNC2(ctx, obj, cs, 1000);

	return cs;
}