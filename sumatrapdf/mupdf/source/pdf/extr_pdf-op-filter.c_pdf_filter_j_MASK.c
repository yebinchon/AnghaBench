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
struct TYPE_5__ {int linejoin; } ;
struct TYPE_6__ {TYPE_1__ stroke; } ;
struct TYPE_7__ {TYPE_2__ pending; } ;
typedef  TYPE_3__ filter_gstate ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, pdf_processor *proc, int linejoin)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;
	filter_gstate *gstate = FUNC0(ctx, p);
	gstate->pending.stroke.linejoin = linejoin;
}