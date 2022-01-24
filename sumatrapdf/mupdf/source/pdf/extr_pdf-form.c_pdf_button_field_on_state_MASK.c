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
 int /*<<< orphan*/  AP ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  N ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Yes ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

pdf_obj *FUNC3(fz_context *ctx, pdf_obj *field)
{
	pdf_obj *ap = FUNC2(ctx, field, FUNC0(AP));
	pdf_obj *on = FUNC1(ctx, FUNC2(ctx, ap, FUNC0(N)));
	if (!on) on = FUNC1(ctx, FUNC2(ctx, ap, FUNC0(D)));
	if (!on) on = FUNC0(Yes);
	return on;
}