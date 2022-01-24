#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_storable ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  underlying; struct TYPE_3__* samples; int /*<<< orphan*/  seps; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FZ_PIXMAP_FLAG_FREE_SAMPLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC4(fz_context *ctx, fz_storable *pix_)
{
	fz_pixmap *pix = (fz_pixmap *)pix_;

	FUNC0(ctx, pix->colorspace);
	FUNC2(ctx, pix->seps);
	if (pix->flags & FZ_PIXMAP_FLAG_FREE_SAMPLES)
		FUNC3(ctx, pix->samples);
	FUNC1(ctx, pix->underlying);
	FUNC3(ctx, pix);
}