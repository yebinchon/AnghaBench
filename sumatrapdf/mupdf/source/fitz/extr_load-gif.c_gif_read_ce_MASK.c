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
struct info {int dummy; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 unsigned char const* FUNC0 (int /*<<< orphan*/ *,struct info*,unsigned char const*,unsigned char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const unsigned char *
FUNC1(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
	return FUNC0(ctx, info, p + 2, end, NULL);
}