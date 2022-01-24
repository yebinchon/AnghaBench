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
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_4__ {TYPE_2__* chain; } ;
typedef  TYPE_1__ pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {int /*<<< orphan*/  (* op_m ) (int /*<<< orphan*/ *,TYPE_2__*,float,float) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_CTM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,float,float) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, pdf_processor *proc, float x, float y)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;
	FUNC0(ctx, p, FLUSH_CTM);
	if (p->chain->op_m)
		p->chain->op_m(ctx, p->chain, x, y);
}