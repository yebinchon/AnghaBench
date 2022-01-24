#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_6__ {int /*<<< orphan*/ * doc; } ;
typedef  TYPE_1__ pdf_device ;
struct TYPE_7__ {int /*<<< orphan*/  buf; int /*<<< orphan*/ * on_pop_arg; } ;
typedef  TYPE_2__ gstate ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_device *dev)
{
	pdf_device *pdev = (pdf_device*)dev;
	pdf_document *doc = pdev->doc;
	gstate *gs = FUNC0(pdev);
	pdf_obj *form_ref = (pdf_obj *)gs->on_pop_arg;

	/* Here we do part of the pop, but not all of it. */
	FUNC4(ctx, pdev);
	FUNC1(ctx, gs->buf, "Q\n");
	FUNC6(ctx, doc, form_ref, gs->buf, 0);
	FUNC2(ctx, gs->buf);
	gs->buf = FUNC3(ctx, gs[-1].buf);
	gs->on_pop_arg = NULL;
	FUNC5(ctx, form_ref);
	FUNC1(ctx, gs->buf, "q\n");
}