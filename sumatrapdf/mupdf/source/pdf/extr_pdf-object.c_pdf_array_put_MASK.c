#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_2__ {int len; int /*<<< orphan*/ * items; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC9(fz_context *ctx, pdf_obj *obj, int i, pdf_obj *item)
{
	FUNC2(obj);
	if (!FUNC1(obj))
		FUNC3(ctx, FZ_ERROR_GENERIC, "not an array (%s)", FUNC7(obj));
	if (i == FUNC0(obj)->len)
	{
		FUNC4(ctx, obj, item);
		return;
	}
	if (i < 0 || i > FUNC0(obj)->len)
		FUNC3(ctx, FZ_ERROR_GENERIC, "index out of bounds");
	FUNC8(ctx, obj, item);
	FUNC5(ctx, FUNC0(obj)->items[i]);
	FUNC0(obj)->items[i] = FUNC6(ctx, item);
}