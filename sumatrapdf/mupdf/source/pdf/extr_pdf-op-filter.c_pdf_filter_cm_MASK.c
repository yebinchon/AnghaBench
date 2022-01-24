#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_processor ;
typedef  int /*<<< orphan*/  pdf_filter_processor ;
struct TYPE_7__ {float a; float b; float c; float d; float e; float f; } ;
typedef  TYPE_2__ fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {int /*<<< orphan*/  ctm; } ;
struct TYPE_8__ {TYPE_1__ pending; } ;
typedef  TYPE_3__ filter_gstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, pdf_processor *proc, float a, float b, float c, float d, float e, float f)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;
	filter_gstate *gstate = FUNC1(ctx, p);
	fz_matrix ctm;

	/* If we're being given an identity matrix, don't bother sending it */
	if (a == 1 && b == 0 && c == 0 && d == 1 && e == 0 && f == 0)
		return;

	ctm.a = a;
	ctm.b = b;
	ctm.c = c;
	ctm.d = d;
	ctm.e = e;
	ctm.f = f;

	gstate->pending.ctm = FUNC0(ctm, gstate->pending.ctm);
}