#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_processor ;
typedef  int /*<<< orphan*/  pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
struct TYPE_5__ {int /*<<< orphan*/ * cs; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ CS; } ;
struct TYPE_7__ {TYPE_2__ pending; } ;
typedef  TYPE_3__ filter_gstate ;

/* Variables and functions */
 int /*<<< orphan*/  ColorSpace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, pdf_processor *proc, const char *name, fz_colorspace *cs)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;
	filter_gstate *gstate = FUNC3(ctx, p);
	FUNC2(gstate->pending.CS.name, name, sizeof gstate->pending.CS.name);
	gstate->pending.CS.cs = cs;
	FUNC1(ctx, p, FUNC0(ColorSpace), name);
}