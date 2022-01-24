#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {int len; TYPE_1__* items; } ;
struct TYPE_3__ {int /*<<< orphan*/  v; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PDF_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(fz_context *ctx, pdf_obj *obj, int idx)
{
	FUNC2(obj);
	if (!FUNC1(obj))
		FUNC3(ctx, FZ_ERROR_GENERIC, "not a dict (%s)", FUNC5(obj));
	if (idx < 0 || idx >= FUNC0(obj)->len)
		FUNC3(ctx, FZ_ERROR_GENERIC, "index out of bounds");

	FUNC6(ctx, obj, NULL);
	FUNC4(ctx, FUNC0(obj)->items[idx].v);
	FUNC0(obj)->items[idx].v = PDF_NULL;
}