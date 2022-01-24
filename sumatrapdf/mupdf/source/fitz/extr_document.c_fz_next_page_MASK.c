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
struct TYPE_5__ {int chapter; int page; } ;
typedef  TYPE_1__ fz_location ;
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC2 (int,int) ; 

fz_location FUNC3(fz_context *ctx, fz_document *doc, fz_location loc)
{
	int nc = FUNC1(ctx, doc);
	int np = FUNC0(ctx, doc, loc.chapter);
	if (loc.page + 1 == np)
	{
		if (loc.chapter + 1 < nc)
		{
			return FUNC2(loc.chapter + 1, 0);
		}
	}
	else
	{
		return FUNC2(loc.chapter, loc.page + 1);
	}
	return loc;
}