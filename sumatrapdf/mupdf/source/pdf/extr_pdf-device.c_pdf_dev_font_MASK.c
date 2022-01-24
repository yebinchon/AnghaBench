#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ ** cid_fonts; } ;
typedef  TYPE_1__ pdf_device ;
struct TYPE_9__ {size_t font; float font_size; int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ gstate ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_10__ {scalar_t__ ft_substitute; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t,float) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, pdf_device *pdev, fz_font *font, fz_matrix trm)
{
	gstate *gs = FUNC0(pdev);
	float font_size = FUNC4(trm);

	/* If the font is unchanged, nothing to do */
	if (gs->font >= 0 && pdev->cid_fonts[gs->font] == font && gs->font_size == font_size)
		return;

	if (FUNC3(ctx, font))
		FUNC5(ctx, FZ_ERROR_GENERIC, "pdf device does not support type 3 fonts");
	if (FUNC2(font)->ft_substitute)
		FUNC5(ctx, FZ_ERROR_GENERIC, "pdf device does not support substitute fonts");
	if (!FUNC7(font))
		FUNC5(ctx, FZ_ERROR_GENERIC, "pdf device does not support font types found in this file");

	gs->font = FUNC6(ctx, pdev, font);
	gs->font_size = font_size;

	FUNC1(ctx, gs->buf, "/F%d %g Tf\n", gs->font, gs->font_size);
}