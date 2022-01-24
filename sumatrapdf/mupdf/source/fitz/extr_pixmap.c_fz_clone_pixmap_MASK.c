#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int h; int stride; int /*<<< orphan*/  samples; int /*<<< orphan*/  alpha; int /*<<< orphan*/  seps; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

fz_pixmap *FUNC3(fz_context *ctx, fz_pixmap *old)
{
	fz_pixmap *pix = FUNC1(ctx, old->colorspace, FUNC0(old->x, old->y, old->w, old->h), old->seps, old->alpha);
	FUNC2(pix->samples, old->samples, pix->stride * pix->h);
	return pix;
}