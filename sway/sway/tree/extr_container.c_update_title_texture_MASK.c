#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wlr_texture {int dummy; } ;
struct wlr_renderer {int dummy; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
struct sway_container {double title_height; int /*<<< orphan*/  formatted_title; } ;
struct border_colors {int /*<<< orphan*/ * text; int /*<<< orphan*/ * background; } ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
typedef  int /*<<< orphan*/  cairo_font_options_t ;
struct TYPE_4__ {int /*<<< orphan*/  pango_markup; int /*<<< orphan*/  font; } ;
struct TYPE_3__ {double scale; int /*<<< orphan*/  backend; int /*<<< orphan*/  subpixel; } ;
typedef  int /*<<< orphan*/  PangoContext ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_ANTIALIAS_BEST ; 
 int /*<<< orphan*/  CAIRO_ANTIALIAS_SUBPIXEL ; 
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 int /*<<< orphan*/  CAIRO_HINT_STYLE_FULL ; 
 int /*<<< orphan*/  WL_SHM_FORMAT_ARGB8888 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_2__* config ; 
 struct sway_output* FUNC17 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct wlr_renderer* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct wlr_texture*) ; 
 struct wlr_texture* FUNC25 (struct wlr_renderer*,int /*<<< orphan*/ ,int,int,int,unsigned char*) ; 

__attribute__((used)) static void FUNC26(struct sway_container *con,
		struct wlr_texture **texture, struct border_colors *class) {
	struct sway_output *output = FUNC17(con);
	if (!output) {
		return;
	}
	if (*texture) {
		FUNC24(*texture);
		*texture = NULL;
	}
	if (!con->formatted_title) {
		return;
	}

	double scale = output->wlr_output->scale;
	int width = 0;
	int height = con->title_height * scale;

	// We must use a non-nil cairo_t for cairo_set_font_options to work.
	// Therefore, we cannot use cairo_create(NULL).
	cairo_surface_t *dummy_surface = FUNC8(
			CAIRO_FORMAT_ARGB32, 0, 0);
	cairo_t *c = FUNC0(dummy_surface);
	FUNC12(c, CAIRO_ANTIALIAS_BEST);
	cairo_font_options_t *fo = FUNC2();
	FUNC5(fo, CAIRO_HINT_STYLE_FULL);
	FUNC4(fo, CAIRO_ANTIALIAS_SUBPIXEL);
	FUNC6(fo, FUNC22(output->wlr_output->subpixel));
	FUNC13(c, fo);
	FUNC19(c, config->font, &width, NULL, NULL, scale,
			config->pango_markup, "%s", con->formatted_title);
	FUNC15(dummy_surface);
	FUNC1(c);

	cairo_surface_t *surface = FUNC8(
			CAIRO_FORMAT_ARGB32, width, height);
	cairo_t *cairo = FUNC0(surface);
	FUNC12(cairo, CAIRO_ANTIALIAS_BEST);
	FUNC13(cairo, fo);
	FUNC3(fo);
	FUNC14(cairo, class->background[0], class->background[1],
			class->background[2], class->background[3]);
	FUNC11(cairo);
	PangoContext *pango = FUNC20(cairo);
	FUNC14(cairo, class->text[0], class->text[1],
			class->text[2], class->text[3]);
	FUNC10(cairo, 0, 0);

	FUNC21(cairo, config->font, scale, config->pango_markup,
			"%s", con->formatted_title);

	FUNC16(surface);
	unsigned char *data = FUNC9(surface);
	int stride = FUNC7(CAIRO_FORMAT_ARGB32, width);
	struct wlr_renderer *renderer = FUNC23(
			output->wlr_output->backend);
	*texture = FUNC25(
			renderer, WL_SHM_FORMAT_ARGB8888, stride, width, height, data);
	FUNC15(surface);
	FUNC18(pango);
	FUNC1(cairo);
}