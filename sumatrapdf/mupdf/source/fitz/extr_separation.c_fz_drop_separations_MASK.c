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
struct TYPE_5__ {int num_separations; int /*<<< orphan*/ * cs; struct TYPE_5__** name; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ fz_separations ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC3(fz_context *ctx, fz_separations *sep)
{
	if (FUNC1(ctx, sep, &sep->refs))
	{
		int i;
		for (i = 0; i < sep->num_separations; i++)
		{
			FUNC2(ctx, sep->name[i]);
			FUNC0(ctx, sep->cs[i]);
		}
		FUNC2(ctx, sep);
	}
}