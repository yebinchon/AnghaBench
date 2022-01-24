#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* convert ) (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {TYPE_1__ fns; } ;
typedef  TYPE_2__ fz_rasterizer ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_overprint ;
typedef  int /*<<< orphan*/  fz_irect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 

void FUNC6(fz_context *ctx, fz_rasterizer *r, int eofill, fz_pixmap *pix, unsigned char *colorbv, fz_overprint *eop)
{
	fz_irect clip = FUNC0(ctx, r);
	clip = FUNC2(clip, FUNC4(pix));
	clip = FUNC2(clip, FUNC1(ctx, r));
	if (!FUNC3(clip))
		r->fns.convert(ctx, r, eofill, &clip, pix, colorbv, eop);
}