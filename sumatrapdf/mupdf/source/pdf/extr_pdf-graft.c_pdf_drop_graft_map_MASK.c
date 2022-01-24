#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* dst_from_src; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ pdf_graft_map ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(fz_context *ctx, pdf_graft_map *map)
{
	if (FUNC0(ctx, map, &map->refs))
	{
		FUNC2(ctx, map->src);
		FUNC2(ctx, map->dst);
		FUNC1(ctx, map->dst_from_src);
		FUNC1(ctx, map);
	}
}