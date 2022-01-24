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
struct info {int compression; int palettetype; void* colors; void* yres; void* xres; int /*<<< orphan*/  bitcount; void* height; void* width; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int BI_RGB ; 
 int BI_RLE24 ; 
 int BI_UNSUPPORTED ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 
 void* FUNC2 (unsigned char const*) ; 

__attribute__((used)) static const unsigned char *
FUNC3(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	int size;

	size = FUNC2(p + 0);
	if (size != 16 && size != 64)
		FUNC0(ctx, FZ_ERROR_GENERIC, "unsupported os2 header size in bmp image");

	if (size >= 16)
	{
		if (end - p < 16)
			FUNC0(ctx, FZ_ERROR_GENERIC, "premature end in bitmap os2 header in bmp image");

		info->width = FUNC2(p + 4);
		info->height = FUNC2(p + 8);
		info->bitcount = FUNC1(p + 14);

		info->compression = BI_RGB;
	}
	if (size >= 64)
	{
		if (end - p < 64)
			FUNC0(ctx, FZ_ERROR_GENERIC, "premature end in bitmap os2 header in bmp image");

		info->compression = FUNC2(p + 16);
		info->xres = FUNC2(p + 24);
		info->yres = FUNC2(p + 28);
		info->colors = FUNC2(p + 32);

		/* 4 in this header is interpreted as 24 bit RLE encoding */
		if (info->compression < 0)
			info->compression = BI_UNSUPPORTED;
		else if (info->compression == 4)
			info->compression = BI_RLE24;
	}

	info->palettetype = 1;

	return p + size;
}