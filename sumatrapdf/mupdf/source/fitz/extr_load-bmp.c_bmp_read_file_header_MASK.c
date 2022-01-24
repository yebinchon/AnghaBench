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
struct info {void* offset; void* filesize; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (unsigned char const*,char*,int) ; 
 void* FUNC2 (unsigned char const*) ; 

__attribute__((used)) static const unsigned char *
FUNC3(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	if (end - p < 14)
		FUNC0(ctx, FZ_ERROR_GENERIC, "premature end in file header in bmp image");

	if (FUNC1(&p[0], "BM", 2))
		FUNC0(ctx, FZ_ERROR_GENERIC, "invalid signature in bmp image");

	info->filesize = FUNC2(p + 2);
	info->offset = FUNC2(p + 10);

	return p + 14;
}