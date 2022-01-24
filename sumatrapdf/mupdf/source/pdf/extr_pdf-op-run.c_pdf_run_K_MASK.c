#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* dev; } ;
typedef  TYPE_2__ pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_DEVFLAG_STROKECOLOR_UNDEFINED ; 
 int /*<<< orphan*/  PDF_STROKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, pdf_processor *proc, float c, float m, float y, float k)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;
	float color[4] = {c, m, y, k};
	pr->dev->flags &= ~FZ_DEVFLAG_STROKECOLOR_UNDEFINED;
	FUNC2(ctx, pr, PDF_STROKE, FUNC0(ctx));
	FUNC1(ctx, pr, PDF_STROKE, color);
}