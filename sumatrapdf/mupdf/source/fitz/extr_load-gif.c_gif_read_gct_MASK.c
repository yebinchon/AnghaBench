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
struct info {int gct_entries; int /*<<< orphan*/  gct; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

__attribute__((used)) static const unsigned char *
FUNC3(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	if (end - p < info->gct_entries * 3)
		FUNC1(ctx, FZ_ERROR_GENERIC, "premature end in global color table in gif image");

	info->gct = FUNC0(ctx, info->gct_entries * 3);
	FUNC2(info->gct, p, info->gct_entries * 3);

	return p + info->gct_entries * 3;
}