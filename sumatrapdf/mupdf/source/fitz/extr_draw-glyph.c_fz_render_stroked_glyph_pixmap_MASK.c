#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dash_len; } ;
typedef  TYPE_1__ fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_irect ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,unsigned char*) ; 

fz_pixmap *
FUNC4(fz_context *ctx, fz_font *font, int gid, fz_matrix *trm, fz_matrix ctm, const fz_stroke_state *stroke, const fz_irect *scissor, int aa)
{
	if (FUNC0(ctx, font))
	{
		fz_matrix subpix_trm;
		unsigned char qe, qf;

		if (stroke->dash_len > 0)
			return NULL;
		(void)FUNC3(ctx, trm, &subpix_trm, &qe, &qf);
		return FUNC1(ctx, font, gid, subpix_trm, ctm, stroke, aa);
	}
	return FUNC2(ctx, font, gid, trm, scissor, aa);
}