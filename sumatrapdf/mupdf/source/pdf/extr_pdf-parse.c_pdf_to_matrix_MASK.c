#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_4__ {void* f; void* e; void* d; void* c; void* b; void* a; } ;
typedef  TYPE_1__ fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__ fz_identity ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

fz_matrix
FUNC2(fz_context *ctx, pdf_obj *array)
{
	if (!FUNC1(ctx, array))
		return fz_identity;
	else
	{
		fz_matrix m;
		m.a = FUNC0(ctx, array, 0);
		m.b = FUNC0(ctx, array, 1);
		m.c = FUNC0(ctx, array, 2);
		m.d = FUNC0(ctx, array, 3);
		m.e = FUNC0(ctx, array, 4);
		m.f = FUNC0(ctx, array, 5);
		return m;
	}
}