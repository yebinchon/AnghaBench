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
typedef  int /*<<< orphan*/  fz_rasterizer ;
typedef  int /*<<< orphan*/  fz_edgebuffer ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fixed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(fz_context *ctx, fz_rasterizer *ras, float fsx, float fsy, float fex, float fey, int rev)
{
	fz_edgebuffer *eb = (fz_edgebuffer *)ras;
	fixed sx = FUNC0(fsx);
	fixed sy = FUNC0(fsy);
	fixed ex = FUNC0(fex);
	fixed ey = FUNC0(fey);

	FUNC1(ctx, eb, sx, sy, ex, ey);
}