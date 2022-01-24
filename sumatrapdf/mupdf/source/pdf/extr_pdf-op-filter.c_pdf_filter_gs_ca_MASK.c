#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_3__ {TYPE_2__* chain; } ;
typedef  TYPE_1__ pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {int /*<<< orphan*/  (* op_gs_ca ) (int /*<<< orphan*/ *,TYPE_2__*,float) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,float) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, pdf_processor *proc, float alpha)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;
	if (p->chain->op_gs_ca)
		p->chain->op_gs_ca(ctx, p->chain, alpha);
}