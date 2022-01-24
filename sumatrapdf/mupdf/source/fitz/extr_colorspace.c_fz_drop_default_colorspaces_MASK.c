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
struct TYPE_5__ {int /*<<< orphan*/  oi; int /*<<< orphan*/  cmyk; int /*<<< orphan*/  rgb; int /*<<< orphan*/  gray; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ fz_default_colorspaces ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC3(fz_context *ctx, fz_default_colorspaces *default_cs)
{
	if (FUNC1(ctx, default_cs, &default_cs->refs))
	{
		FUNC0(ctx, default_cs->gray);
		FUNC0(ctx, default_cs->rgb);
		FUNC0(ctx, default_cs->cmyk);
		FUNC0(ctx, default_cs->oi);
		FUNC2(ctx, default_cs);
	}
}