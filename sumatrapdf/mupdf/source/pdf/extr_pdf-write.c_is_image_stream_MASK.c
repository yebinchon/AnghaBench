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
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/  Height ; 
 int /*<<< orphan*/  Image ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Subtype ; 
 int /*<<< orphan*/  Type ; 
 int /*<<< orphan*/  Width ; 
 int /*<<< orphan*/  XObject ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(fz_context *ctx, pdf_obj *obj)
{
	pdf_obj *o;
	if ((o = FUNC2(ctx, obj, FUNC0(Type)), FUNC3(ctx, o, FUNC0(XObject))))
		if ((o = FUNC2(ctx, obj, FUNC0(Subtype)), FUNC3(ctx, o, FUNC0(Image))))
			return 1;
	if (o = FUNC2(ctx, obj, FUNC0(Filter)), FUNC1(ctx, o))
		return 1;
	if (FUNC2(ctx, obj, FUNC0(Width)) != NULL && FUNC2(ctx, obj, FUNC0(Height)) != NULL)
		return 1;
	return 0;
}