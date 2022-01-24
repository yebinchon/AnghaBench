#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ depth; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ fz_trace_device ;
typedef  int /*<<< orphan*/  fz_text ;
typedef  int /*<<< orphan*/  fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, fz_device *dev_, const fz_text *text, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
	fz_trace_device *dev = (fz_trace_device*)dev_;
	fz_output *out = dev->out;
	FUNC0(ctx, out, dev->depth);
	FUNC3(ctx, out, "<clip_stroke_text");
	FUNC1(ctx, out, ctm);
	FUNC3(ctx, out, ">\n");
	FUNC2(ctx, out, text, dev->depth+1);
	FUNC0(ctx, out, dev->depth);
	FUNC3(ctx, out, "</clip_stroke_text>\n");
	dev->depth++;
}