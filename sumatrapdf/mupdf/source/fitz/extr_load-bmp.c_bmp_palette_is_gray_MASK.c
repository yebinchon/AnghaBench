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
struct info {scalar_t__* palette; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int
FUNC1(fz_context *ctx, struct info *info, int readcolors)
{
	int i;
	for (i = 0; i < readcolors; i++)
	{
		int rgdiff = FUNC0(info->palette[3 * i + 0] - info->palette[3 * i + 1]);
		int gbdiff = FUNC0(info->palette[3 * i + 1] - info->palette[3 * i + 2]);
		int rbdiff = FUNC0(info->palette[3 * i + 0] - info->palette[3 * i + 2]);
		if (rgdiff > 2 || gbdiff > 2 || rbdiff > 2)
			return 0;
	}
	return 1;
}