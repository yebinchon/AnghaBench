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
struct TYPE_4__ {int /*<<< orphan*/  font; } ;
struct TYPE_5__ {int /*<<< orphan*/  stroke_state; int /*<<< orphan*/  softmask_resources; int /*<<< orphan*/  softmask; TYPE_1__ text; int /*<<< orphan*/  fill; int /*<<< orphan*/  stroke; } ;
typedef  TYPE_2__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, pdf_gstate *gs)
{
	FUNC2(ctx, &gs->stroke);
	FUNC2(ctx, &gs->fill);
	FUNC1(ctx, gs->text.font);
	FUNC3(ctx, gs->softmask);
	FUNC3(ctx, gs->softmask_resources);
	FUNC0(ctx, gs->stroke_state);
}