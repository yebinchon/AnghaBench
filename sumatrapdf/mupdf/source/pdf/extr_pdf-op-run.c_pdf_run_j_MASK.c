#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* dev; } ;
typedef  TYPE_2__ pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_10__ {TYPE_6__* stroke_state; } ;
typedef  TYPE_3__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_11__ {int linejoin; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_DEVFLAG_LINEJOIN_UNDEFINED ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(fz_context *ctx, pdf_processor *proc, int linejoin)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;
	pdf_gstate *gstate = FUNC1(ctx, pr);

	pr->dev->flags &= ~FZ_DEVFLAG_LINEJOIN_UNDEFINED;
	gstate->stroke_state = FUNC0(ctx, gstate->stroke_state);
	gstate->stroke_state->linejoin = linejoin;
}