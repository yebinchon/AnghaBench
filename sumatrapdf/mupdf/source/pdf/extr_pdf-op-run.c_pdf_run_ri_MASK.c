#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_9__ {int /*<<< orphan*/  ri; } ;
struct TYPE_10__ {TYPE_3__ color_params; } ;
struct TYPE_7__ {int /*<<< orphan*/  ri; } ;
struct TYPE_8__ {TYPE_1__ color_params; } ;
struct TYPE_11__ {TYPE_4__ fill; TYPE_2__ stroke; } ;
typedef  TYPE_5__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(fz_context *ctx, pdf_processor *proc, const char *intent)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;
	pdf_gstate *gstate = FUNC1(ctx, pr);
	gstate->fill.color_params.ri = FUNC0(intent);
	gstate->stroke.color_params.ri = gstate->fill.color_params.ri;
}