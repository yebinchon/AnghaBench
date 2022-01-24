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
struct fz_jbig2_alloc_s {int /*<<< orphan*/ * ctx; } ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  Jbig2Allocator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static void *FUNC3(Jbig2Allocator *allocator, void *p, size_t size)
{
	fz_context *ctx = ((struct fz_jbig2_alloc_s *) allocator)->ctx;
	if (size == 0)
	{
		FUNC0(ctx, p);
		return NULL;
	}
	if (p == NULL)
		return FUNC1(ctx, size);
	return FUNC2(ctx, p, size);
}