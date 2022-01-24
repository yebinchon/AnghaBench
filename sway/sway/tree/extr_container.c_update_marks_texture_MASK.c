#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wlr_texture {int dummy; } ;
struct wlr_renderer {int dummy; } ;
struct sway_output {TYPE_2__* wlr_output; } ;
struct sway_container {double title_height; TYPE_1__* marks; } ;
struct border_colors {int /*<<< orphan*/ * text; int /*<<< orphan*/ * background; } ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_6__ {int /*<<< orphan*/  font; } ;
struct TYPE_5__ {double scale; int /*<<< orphan*/  backend; } ;
struct TYPE_4__ {int length; char** items; } ;
typedef  int /*<<< orphan*/  PangoContext ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_ANTIALIAS_BEST ; 
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 int /*<<< orphan*/  WL_SHM_FORMAT_ARGB8888 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (size_t,int) ; 
 TYPE_3__* config ; 
 struct sway_output* FUNC12 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,int,char*,char*) ; 
 char* FUNC16 (size_t) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 scalar_t__ FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int,char*) ; 
 struct wlr_renderer* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct wlr_texture*) ; 
 struct wlr_texture* FUNC25 (struct wlr_renderer*,int /*<<< orphan*/ ,int,int,int,unsigned char*) ; 

__attribute__((used)) static void FUNC26(struct sway_container *con,
		struct wlr_texture **texture, struct border_colors *class) {
	struct sway_output *output = FUNC12(con);
	if (!output) {
		return;
	}
	if (*texture) {
		FUNC24(*texture);
		*texture = NULL;
	}
	if (!con->marks->length) {
		return;
	}

	size_t len = 0;
	for (int i = 0; i < con->marks->length; ++i) {
		char *mark = con->marks->items[i];
		if (mark[0] != '_') {
			len += FUNC21(mark) + 2;
		}
	}
	char *buffer = FUNC11(len + 1, 1);
	char *part = FUNC16(len + 1);

	if (!FUNC22(buffer && part, "Unable to allocate memory")) {
		FUNC13(buffer);
		return;
	}

	for (int i = 0; i < con->marks->length; ++i) {
		char *mark = con->marks->items[i];
		if (mark[0] != '_') {
			FUNC19(part, "[%s]", mark);
			FUNC20(buffer, part);
		}
	}
	FUNC13(part);

	double scale = output->wlr_output->scale;
	int width = 0;
	int height = con->title_height * scale;

	cairo_t *c = FUNC0(NULL);
	FUNC15(c, config->font, &width, NULL, NULL, scale, false,
			"%s", buffer);
	FUNC1(c);

	cairo_surface_t *surface = FUNC3(
			CAIRO_FORMAT_ARGB32, width, height);
	cairo_t *cairo = FUNC0(surface);
	FUNC8(cairo, class->background[0], class->background[1],
			class->background[2], class->background[3]);
	FUNC6(cairo);
	PangoContext *pango = FUNC17(cairo);
	FUNC7(cairo, CAIRO_ANTIALIAS_BEST);
	FUNC8(cairo, class->text[0], class->text[1],
			class->text[2], class->text[3]);
	FUNC5(cairo, 0, 0);

	FUNC18(cairo, config->font, scale, false, "%s", buffer);

	FUNC10(surface);
	unsigned char *data = FUNC4(surface);
	int stride = FUNC2(CAIRO_FORMAT_ARGB32, width);
	struct wlr_renderer *renderer = FUNC23(
			output->wlr_output->backend);
	*texture = FUNC25(
			renderer, WL_SHM_FORMAT_ARGB8888, stride, width, height, data);
	FUNC9(surface);
	FUNC14(pango);
	FUNC1(cairo);
	FUNC13(buffer);
}