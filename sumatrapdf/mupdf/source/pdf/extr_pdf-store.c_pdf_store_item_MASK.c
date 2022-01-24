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
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pdf_obj_store_type ; 

void
FUNC6(fz_context *ctx, pdf_obj *key, void *val, size_t itemsize)
{
	void *existing;

	FUNC0(FUNC5(ctx, key) || FUNC2(ctx, key) || FUNC3(ctx, key) || FUNC4(ctx, key));
	existing = FUNC1(ctx, key, val, itemsize, &pdf_obj_store_type);
	FUNC0(existing == NULL);
	(void)existing; /* Silence warning in release builds */
}