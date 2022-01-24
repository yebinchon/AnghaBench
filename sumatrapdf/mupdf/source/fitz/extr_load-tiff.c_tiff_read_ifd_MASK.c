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
struct tiff {unsigned int rp; unsigned int bp; unsigned int ep; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (struct tiff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tiff*,unsigned int) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, struct tiff *tiff)
{
	unsigned offset;
	unsigned count;
	unsigned i;

	offset = tiff->rp - tiff->bp;

	count = FUNC1(tiff);

	if (count * 12 > (unsigned)(tiff->ep - tiff->rp))
		FUNC0(ctx, FZ_ERROR_GENERIC, "overlarge IFD entry count %u", count);

	offset += 2;
	for (i = 0; i < count; i++)
	{
		FUNC2(ctx, tiff, offset);
		offset += 12;
	}
}