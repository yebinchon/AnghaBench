#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_7__ {TYPE_3__* chain; TYPE_5__* current_tags; TYPE_5__* pending_tags; } ;
typedef  TYPE_1__ pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_9__ {int /*<<< orphan*/  raw; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* op_EMC ) (int /*<<< orphan*/ *,TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Properties ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, pdf_processor *proc)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;

	/* If we have any pending tags, pop one of those. If not,
	 * pop one of the current ones, and pass the EMC on. */
	if (p->pending_tags != NULL)
		FUNC3(ctx, p, &p->pending_tags);
	else if (p->current_tags)
	{
		FUNC5(ctx, p);
		FUNC1(ctx, p, FUNC0(Properties), FUNC2(ctx, p->current_tags->raw));
		FUNC3(ctx, p, &p->current_tags);
		if (p->chain->op_EMC)
			p->chain->op_EMC(ctx, p->chain);
	}
}