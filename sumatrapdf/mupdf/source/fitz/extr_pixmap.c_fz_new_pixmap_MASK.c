#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fz_separations ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

fz_pixmap *
FUNC3(fz_context *ctx, fz_colorspace *colorspace, int w, int h, fz_separations *seps, int alpha)
{
	int stride;
	int s = FUNC1(ctx, seps);
	if (!colorspace && s == 0) alpha = 1;
	stride = (FUNC0(ctx, colorspace) + s + alpha) * w;
	return FUNC2(ctx, colorspace, w, h, seps, alpha, stride, NULL);
}