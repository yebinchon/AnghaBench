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
struct tiff {unsigned int* ifd_offsets; scalar_t__ rp; scalar_t__ bp; scalar_t__ ep; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,struct tiff*,unsigned int) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, struct tiff *tiff, int subimage)
{
	unsigned offset = tiff->ifd_offsets[0];

	while (subimage--)
	{
		offset = FUNC1(ctx, tiff, offset);

		if (offset == 0)
			FUNC0(ctx, FZ_ERROR_GENERIC, "subimage index %i out of range", subimage);
	}

	tiff->rp = tiff->bp + offset;

	if (tiff->rp < tiff->bp || tiff->rp > tiff->ep)
		FUNC0(ctx, FZ_ERROR_GENERIC, "invalid IFD offset %u", offset);
}