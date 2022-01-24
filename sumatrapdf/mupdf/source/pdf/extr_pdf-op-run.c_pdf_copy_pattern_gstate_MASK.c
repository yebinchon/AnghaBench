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
struct TYPE_5__ {int /*<<< orphan*/  font; } ;
struct TYPE_6__ {int /*<<< orphan*/  stroke_state; int /*<<< orphan*/  softmask; TYPE_1__ text; int /*<<< orphan*/  ctm; } ;
typedef  TYPE_2__ pdf_gstate ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, pdf_gstate *dst, const pdf_gstate *src)
{
	dst->ctm = src->ctm;

	FUNC2(ctx, dst->text.font);
	dst->text.font = FUNC4(ctx, src->text.font);

	FUNC3(ctx, dst->softmask);
	dst->softmask = FUNC5(ctx, src->softmask);

	FUNC0(ctx, dst->stroke_state);
	dst->stroke_state = FUNC1(ctx, src->stroke_state);
}