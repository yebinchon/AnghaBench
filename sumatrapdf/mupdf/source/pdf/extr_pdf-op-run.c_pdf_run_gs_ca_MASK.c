#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_4__ {int /*<<< orphan*/  alpha; } ;
struct TYPE_5__ {TYPE_1__ fill; } ;
typedef  TYPE_2__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(fz_context *ctx, pdf_processor *proc, float alpha)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;
	pdf_gstate *gstate = FUNC1(ctx, pr);
	gstate->fill.alpha = FUNC0(alpha, 0, 1);
}