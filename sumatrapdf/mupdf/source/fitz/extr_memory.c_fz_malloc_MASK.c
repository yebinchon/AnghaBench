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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 

void *
FUNC2(fz_context *ctx, size_t size)
{
	void *p;
	if (size == 0)
		return NULL;
	p = FUNC0(ctx, size);
	if (!p)
		FUNC1(ctx, FZ_ERROR_MEMORY, "malloc of %zu bytes failed", size);
	return p;
}