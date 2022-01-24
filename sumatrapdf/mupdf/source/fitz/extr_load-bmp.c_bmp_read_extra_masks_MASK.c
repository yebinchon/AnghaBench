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
struct info {scalar_t__ compression; void* bmask; void* gmask; void* rmask; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ BI_ALPHABITS ; 
 scalar_t__ BI_BITFIELDS ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (unsigned char const*) ; 

__attribute__((used)) static const unsigned char *
FUNC2(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	int size = 0;

	if (info->compression == BI_BITFIELDS)
	{
		size = 12;
		if (end - p < 12)
			FUNC0(ctx, FZ_ERROR_GENERIC, "premature end in mask header in bmp image");

		info->rmask = FUNC1(p + 0);
		info->gmask = FUNC1(p + 4);
		info->bmask = FUNC1(p + 8);
	}
	else if (info->compression == BI_ALPHABITS)
	{
		size = 16;
		if (end - p < 16)
			FUNC0(ctx, FZ_ERROR_GENERIC, "premature end in mask header in bmp image");

		/* ignore alpha mask */
		info->rmask = FUNC1(p + 0);
		info->gmask = FUNC1(p + 4);
		info->bmask = FUNC1(p + 8);
	}

	return p + size;
}