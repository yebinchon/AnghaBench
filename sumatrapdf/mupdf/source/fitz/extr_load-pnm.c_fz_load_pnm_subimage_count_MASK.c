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
struct info {int subimages; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct info*,unsigned char const*,size_t,int,int) ; 

int
FUNC1(fz_context *ctx, const unsigned char *p, size_t total)
{
	struct info pnm = { 0 };
	(void) FUNC0(ctx, &pnm, p, total, 1, -1);
	return pnm.subimages;
}