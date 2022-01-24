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
struct info {int xres; int yres; scalar_t__ palettetype; int /*<<< orphan*/  compression; void* bitcount; void* height; void* width; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (unsigned char const*) ; 
 int FUNC2 (unsigned char const*) ; 

__attribute__((used)) static const unsigned char *
FUNC3(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	int size;

	size = FUNC2(p + 0);
	if (size != 12)
		FUNC0(ctx, FZ_ERROR_GENERIC, "unsupported core header size in bmp image");

	if (size >= 12)
	{
		if (end - p < 12)
			FUNC0(ctx, FZ_ERROR_GENERIC, "premature end in bitmap core header in bmp image");

		info->width = FUNC1(p + 4);
		info->height = FUNC1(p + 6);
		info->bitcount = FUNC1(p + 10);
	}

	info->xres = 2835;
	info->yres = 2835;
	info->compression = BI_RGB;
	info->palettetype = 0;

	return p + size;
}