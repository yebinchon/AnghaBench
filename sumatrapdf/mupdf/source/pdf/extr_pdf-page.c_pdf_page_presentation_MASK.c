#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * obj; } ;
typedef  TYPE_1__ pdf_page ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_7__ {int duration; int vertical; int outwards; int /*<<< orphan*/  type; int /*<<< orphan*/  direction; } ;
typedef  TYPE_2__ fz_transition ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Blinds ; 
 int /*<<< orphan*/  Box ; 
 int /*<<< orphan*/  Cover ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  Di ; 
 int /*<<< orphan*/  Dissolve ; 
 int /*<<< orphan*/  Dm ; 
 int /*<<< orphan*/  Dur ; 
 int /*<<< orphan*/  FZ_TRANSITION_BLINDS ; 
 int /*<<< orphan*/  FZ_TRANSITION_BOX ; 
 int /*<<< orphan*/  FZ_TRANSITION_COVER ; 
 int /*<<< orphan*/  FZ_TRANSITION_DISSOLVE ; 
 int /*<<< orphan*/  FZ_TRANSITION_FADE ; 
 int /*<<< orphan*/  FZ_TRANSITION_FLY ; 
 int /*<<< orphan*/  FZ_TRANSITION_GLITTER ; 
 int /*<<< orphan*/  FZ_TRANSITION_NONE ; 
 int /*<<< orphan*/  FZ_TRANSITION_PUSH ; 
 int /*<<< orphan*/  FZ_TRANSITION_SPLIT ; 
 int /*<<< orphan*/  FZ_TRANSITION_UNCOVER ; 
 int /*<<< orphan*/  FZ_TRANSITION_WIPE ; 
 int /*<<< orphan*/  Fade ; 
 int /*<<< orphan*/  Fly ; 
 int /*<<< orphan*/  Glitter ; 
 int /*<<< orphan*/  H ; 
 int /*<<< orphan*/  I ; 
 int /*<<< orphan*/  M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Push ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  Split ; 
 int /*<<< orphan*/  Trans ; 
 int /*<<< orphan*/  Uncover ; 
 int /*<<< orphan*/  Wipe ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

fz_transition *
FUNC6(fz_context *ctx, pdf_page *page, fz_transition *transition, float *duration)
{
	pdf_obj *obj, *transdict;

	*duration = FUNC3(ctx, page->obj, FUNC0(Dur));

	transdict = FUNC1(ctx, page->obj, FUNC0(Trans));
	if (!transdict)
		return NULL;

	obj = FUNC1(ctx, transdict, FUNC0(D));

	transition->duration = (obj ? FUNC5(ctx, obj) : 1);

	transition->vertical = !FUNC4(ctx, FUNC1(ctx, transdict, FUNC0(Dm)), FUNC0(H));
	transition->outwards = !FUNC4(ctx, FUNC1(ctx, transdict, FUNC0(M)), FUNC0(I));
	/* FIXME: If 'Di' is None, it should be handled differently, but
	 * this only affects Fly, and we don't implement that currently. */
	transition->direction = (FUNC2(ctx, transdict, FUNC0(Di)));
	/* FIXME: Read SS for Fly when we implement it */
	/* FIXME: Read B for Fly when we implement it */

	obj = FUNC1(ctx, transdict, FUNC0(S));
	if (FUNC4(ctx, obj, FUNC0(Split)))
		transition->type = FZ_TRANSITION_SPLIT;
	else if (FUNC4(ctx, obj, FUNC0(Blinds)))
		transition->type = FZ_TRANSITION_BLINDS;
	else if (FUNC4(ctx, obj, FUNC0(Box)))
		transition->type = FZ_TRANSITION_BOX;
	else if (FUNC4(ctx, obj, FUNC0(Wipe)))
		transition->type = FZ_TRANSITION_WIPE;
	else if (FUNC4(ctx, obj, FUNC0(Dissolve)))
		transition->type = FZ_TRANSITION_DISSOLVE;
	else if (FUNC4(ctx, obj, FUNC0(Glitter)))
		transition->type = FZ_TRANSITION_GLITTER;
	else if (FUNC4(ctx, obj, FUNC0(Fly)))
		transition->type = FZ_TRANSITION_FLY;
	else if (FUNC4(ctx, obj, FUNC0(Push)))
		transition->type = FZ_TRANSITION_PUSH;
	else if (FUNC4(ctx, obj, FUNC0(Cover)))
		transition->type = FZ_TRANSITION_COVER;
	else if (FUNC4(ctx, obj, FUNC0(Uncover)))
		transition->type = FZ_TRANSITION_UNCOVER;
	else if (FUNC4(ctx, obj, FUNC0(Fade)))
		transition->type = FZ_TRANSITION_FADE;
	else
		transition->type = FZ_TRANSITION_NONE;

	return transition;
}