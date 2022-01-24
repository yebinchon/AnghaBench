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
struct info {int bitcount; int colors; scalar_t__ palettetype; void** palette; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct info*,int) ; 
 int FUNC1 (int,int) ; 
 void* FUNC2 (unsigned char const*) ; 

__attribute__((used)) static const unsigned char *
FUNC3(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	int i, colors, readcolors;

	if (info->bitcount > 8)
		return p;

	if (info->colors == 0)
		colors = 1 << info->bitcount;
	else
		colors = info->colors;

	colors = FUNC1(colors, 1 << info->bitcount);

	if (info->palettetype == 0)
	{
		readcolors = FUNC1(colors, (end - p) / 3);
		for (i = 0; i < readcolors; i++)
		{
			info->palette[3 * i + 0] = FUNC2(p + i * 3 + 2);
			info->palette[3 * i + 1] = FUNC2(p + i * 3 + 1);
			info->palette[3 * i + 2] = FUNC2(p + i * 3 + 0);
		}
		if (readcolors < colors)
			FUNC0(ctx, info, readcolors);
		return p + readcolors * 3;
	}
	else
	{
		readcolors = FUNC1(colors, (end - p) / 4);
		for (i = 0; i < readcolors; i++)
		{
			/* ignore alpha channel */
			info->palette[3 * i + 0] = FUNC2(p + i * 4 + 2);
			info->palette[3 * i + 1] = FUNC2(p + i * 4 + 1);
			info->palette[3 * i + 2] = FUNC2(p + i * 4 + 0);
		}
		if (readcolors < colors)
			FUNC0(ctx, info, readcolors);
		return p + readcolors * 4;
	}

	return p;
}