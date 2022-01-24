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
struct TYPE_2__ {int len; scalar_t__* items; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC8(fz_context *ctx, pdf_obj *obj, int i)
{
	FUNC2(obj);
	if (!FUNC1(obj))
		FUNC3(ctx, FZ_ERROR_GENERIC, "not an array (%s)", FUNC6(obj));
	if (i < 0 || i >= FUNC0(obj)->len)
		FUNC3(ctx, FZ_ERROR_GENERIC, "index out of bounds");
	FUNC7(ctx, obj, NULL);
	FUNC5(ctx, FUNC0(obj)->items[i]);
	FUNC0(obj)->items[i] = 0;
	FUNC0(obj)->len--;
	FUNC4(FUNC0(obj)->items + i, FUNC0(obj)->items + i + 1, (FUNC0(obj)->len - i) * sizeof(pdf_obj*));
}