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
struct TYPE_4__ {int /*<<< orphan*/  depth; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ fz_trace_device ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
struct TYPE_5__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_2__ fz_image ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_device *dev_, fz_image *image, fz_matrix ctm, fz_rect scissor)
{
	fz_trace_device *dev = (fz_trace_device*)dev_;
	fz_output *out = dev->out;
	FUNC0(ctx, out, dev->depth);
	FUNC2(ctx, out, "<clip_image_mask");
	FUNC1(ctx, out, ctm);
	FUNC2(ctx, out, " width=\"%d\" height=\"%d\"", image->w, image->h);
	FUNC2(ctx, out, "/>\n");
	dev->depth++;
}