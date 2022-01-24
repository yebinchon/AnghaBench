#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float duration; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int scrw; int scrh; int resolution; int layout_use_doc_css; int tint_white; int useicc; int aalevel; scalar_t__ useseparations; int /*<<< orphan*/  colorspace; TYPE_1__ transition; int /*<<< orphan*/ * layout_css; int /*<<< orphan*/  layout_em; int /*<<< orphan*/  layout_h; int /*<<< orphan*/  layout_w; int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_2__ pdfapp_t ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_DEFAULT_LAYOUT_EM ; 
 int /*<<< orphan*/  FZ_DEFAULT_LAYOUT_H ; 
 int /*<<< orphan*/  FZ_DEFAULT_LAYOUT_W ; 
 int /*<<< orphan*/  FZ_TRANSITION_FADE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(fz_context *ctx, pdfapp_t *app)
{
	FUNC2(app, 0, sizeof(pdfapp_t));
	app->scrw = 640;
	app->scrh = 480;
	app->resolution = 72;
	app->ctx = ctx;

	app->layout_w = FZ_DEFAULT_LAYOUT_W;
	app->layout_h = FZ_DEFAULT_LAYOUT_H;
	app->layout_em = FZ_DEFAULT_LAYOUT_EM;
	app->layout_css = NULL;
	app->layout_use_doc_css = 1;

	app->transition.duration = 0.25f;
	app->transition.type = FZ_TRANSITION_FADE;
#ifdef _WIN32
	app->colorspace = fz_device_bgr(ctx);
#else
	app->colorspace = FUNC1(ctx);
#endif
	app->tint_white = 0xFFFAF0;

	app->useicc = 1;
	app->useseparations = 0;
	app->aalevel = 8;
}