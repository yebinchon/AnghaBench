#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cmyk; } ;
typedef  TYPE_1__ fz_default_colorspaces ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {scalar_t__ type; int n; } ;
typedef  TYPE_2__ fz_colorspace ;

/* Variables and functions */
 scalar_t__ FZ_COLORSPACE_CMYK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC2(fz_context *ctx, fz_default_colorspaces *default_cs, fz_colorspace *cs)
{
	if (cs->type == FZ_COLORSPACE_CMYK && cs->n == 4)
	{
		FUNC0(ctx, default_cs->cmyk);
		default_cs->cmyk = FUNC1(ctx, cs);
	}
}