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
struct TYPE_5__ {TYPE_1__* gstate; int /*<<< orphan*/  dev; scalar_t__ gtop; } ;
typedef  TYPE_2__ pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {scalar_t__ clip_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, pdf_processor *proc)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;

	while (pr->gtop)
		FUNC1(ctx, pr);

	while (pr->gstate[0].clip_depth)
	{
		FUNC0(ctx, pr->dev);
		pr->gstate[0].clip_depth--;
	}
}