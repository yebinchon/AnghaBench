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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_9__ {int bp; } ;
struct TYPE_10__ {TYPE_3__ color_params; } ;
struct TYPE_7__ {int bp; } ;
struct TYPE_8__ {TYPE_1__ color_params; } ;
struct TYPE_11__ {TYPE_4__ fill; TYPE_2__ stroke; } ;
typedef  TYPE_5__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, pdf_processor *proc, pdf_obj *obj)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;
	pdf_gstate *gstate = FUNC1(ctx, pr);
	int on = FUNC2(ctx, obj, FUNC0(ON));
	/* The spec says that "ON" means on, "OFF" means "Off", and
	 * "Default" or anything else means "Meh, do what you want." */
	gstate->stroke.color_params.bp = on;
	gstate->fill.color_params.bp = on;
}