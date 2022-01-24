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
struct info {int gif89a; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (unsigned char const*,char*,int) ; 

__attribute__((used)) static const unsigned char *
FUNC2(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	if (end - p < 6)
		FUNC0(ctx, FZ_ERROR_GENERIC, "premature end in header in gif image");

	if (FUNC1(&p[0], "GIF", 3))
		FUNC0(ctx, FZ_ERROR_GENERIC, "invalid signature in gif image");
	if (FUNC1(&p[3], "87a", 3) && FUNC1(&p[3], "89a", 3))
		FUNC0(ctx, FZ_ERROR_GENERIC, "unsupported version in gif image");

	info->gif89a = !FUNC1(p, "GIF89a", 6);

	return p + 6;
}