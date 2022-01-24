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
 int /*<<< orphan*/  Opt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

const char *FUNC6(fz_context *ctx, pdf_obj *field, int export, int i)
{
	pdf_obj *opt = FUNC4(ctx, field, FUNC0(Opt));
	pdf_obj *ent = FUNC1(ctx, opt, i);
	if (FUNC3(ctx, ent) == 2)
		return FUNC2(ctx, ent, export ? 0 : 1);
	else
		return FUNC5(ctx, ent);
}