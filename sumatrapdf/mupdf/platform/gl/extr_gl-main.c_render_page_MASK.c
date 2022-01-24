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
typedef  int /*<<< orphan*/  fz_pixmap ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  currentaa ; 
 scalar_t__ currentinvert ; 
 scalar_t__ currenttint ; 
 int /*<<< orphan*/  draw_page_ctm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fzpage ; 
 int /*<<< orphan*/  page_tex ; 
 int /*<<< orphan*/  seps ; 
 int /*<<< orphan*/  tint_black ; 
 int /*<<< orphan*/  tint_white ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	fz_pixmap *pix;

	FUNC7();

	FUNC5(ctx, currentaa);

	pix = FUNC4(ctx, fzpage, draw_page_ctm, FUNC0(ctx), seps, 0);
	if (currentinvert)
	{
		FUNC3(ctx, pix);
		FUNC2(ctx, pix, 1 / 1.4f);
	}
	if (currenttint)
	{
		FUNC6(ctx, pix, tint_black, tint_white);
	}

	FUNC8(&page_tex, pix);
	FUNC1(ctx, pix);
}