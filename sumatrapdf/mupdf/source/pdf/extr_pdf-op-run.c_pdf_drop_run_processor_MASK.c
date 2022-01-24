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
struct TYPE_3__ {int /*<<< orphan*/  text; } ;
struct TYPE_4__ {size_t gtop; int /*<<< orphan*/ * gstate; int /*<<< orphan*/  default_cs; TYPE_1__ tos; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_processor *proc)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;

	while (pr->gtop >= 0)
	{
		FUNC4(ctx, &pr->gstate[pr->gtop]);
		pr->gtop--;
	}

	FUNC1(ctx, pr->path);
	FUNC2(ctx, pr->tos.text);

	FUNC0(ctx, pr->default_cs);

	FUNC3(ctx, pr->gstate);
}