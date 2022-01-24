#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int x; int y; int width; int height; } ;
struct TYPE_7__ {int x; int y; int width; int height; TYPE_4__ button_down; TYPE_4__ button_up; void* visible_lines; int /*<<< orphan*/  offset; void* total_lines; int /*<<< orphan*/  message; } ;
struct swaynag {int width; int scale; TYPE_1__* type; TYPE_2__ details; } ;
typedef  int gint ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_8__ {int start_index; } ;
struct TYPE_6__ {int details_border_thickness; int message_padding; int /*<<< orphan*/  text; int /*<<< orphan*/  border; int /*<<< orphan*/  font; } ;
typedef  TYPE_3__ PangoLayoutLine ;
typedef  int /*<<< orphan*/  PangoLayout ;

/* Variables and functions */
 int /*<<< orphan*/  PANGO_ELLIPSIZE_END ; 
 int PANGO_SCALE ; 
 int /*<<< orphan*/  PANGO_WRAP_WORD_CHAR ; 
 int SWAYNAG_MAX_HEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct swaynag*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*,int*) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct swaynag*,TYPE_4__*) ; 
 int FUNC20 (char const*) ; 

__attribute__((used)) static uint32_t FUNC21(cairo_t *cairo, struct swaynag *swaynag,
		uint32_t y) {
	uint32_t width = swaynag->width * swaynag->scale;

	int border = swaynag->type->details_border_thickness * swaynag->scale;
	int padding = swaynag->type->message_padding * swaynag->scale;
	int decor = padding + border;

	swaynag->details.x = decor;
	swaynag->details.y = y * swaynag->scale + decor;
	swaynag->details.width = width - decor * 2;

	PangoLayout *layout = FUNC6(cairo, swaynag->type->font,
			swaynag->details.message, swaynag->scale, false);
	FUNC17(layout,
			(swaynag->details.width - padding * 2) * PANGO_SCALE);
	FUNC18(layout, PANGO_WRAP_WORD_CHAR);
	FUNC15(layout, false);
	FUNC8(cairo, layout);
	swaynag->details.total_lines = FUNC9(layout);

	PangoLayoutLine *line;
	line = FUNC10(layout, swaynag->details.offset);
	gint offset = line->start_index;
	const char *text = FUNC12(layout);
	FUNC16(layout, text + offset, FUNC20(text) - offset);

	int text_width, text_height;
	FUNC8(cairo, layout);
	FUNC11(layout, &text_width, &text_height);

	bool show_buttons = swaynag->details.offset > 0;
	int button_width = FUNC5(cairo, swaynag);
	if (show_buttons) {
		swaynag->details.width -= button_width;
		FUNC17(layout,
				(swaynag->details.width - padding * 2) * PANGO_SCALE);
	}

	uint32_t ideal_height;
	do {
		ideal_height = swaynag->details.y + text_height + decor + padding * 2;
		if (ideal_height > SWAYNAG_MAX_HEIGHT) {
			ideal_height = SWAYNAG_MAX_HEIGHT;

			if (!show_buttons) {
				show_buttons = true;
				swaynag->details.width -= button_width;
				FUNC17(layout,
						(swaynag->details.width - padding * 2) * PANGO_SCALE);
			}
		}

		swaynag->details.height = ideal_height - swaynag->details.y - decor;
		FUNC14(layout,
				(swaynag->details.height - padding * 2) * PANGO_SCALE);
		FUNC13(layout, PANGO_ELLIPSIZE_END);
		FUNC8(cairo, layout);
		FUNC11(layout, &text_width, &text_height);
	} while (text_height != (swaynag->details.height - padding * 2));

	swaynag->details.visible_lines = FUNC9(layout);

	if (show_buttons) {
		swaynag->details.button_up.x =
			swaynag->details.x + swaynag->details.width;
		swaynag->details.button_up.y = swaynag->details.y;
		swaynag->details.button_up.width = button_width;
		swaynag->details.button_up.height = swaynag->details.height / 2;
		FUNC19(cairo, swaynag,
				&swaynag->details.button_up);

		swaynag->details.button_down.x =
			swaynag->details.x + swaynag->details.width;
		swaynag->details.button_down.y =
			swaynag->details.button_up.y + swaynag->details.button_up.height;
		swaynag->details.button_down.width = button_width;
		swaynag->details.button_down.height = swaynag->details.height / 2;
		FUNC19(cairo, swaynag,
				&swaynag->details.button_down);
	}

	FUNC3(cairo, swaynag->type->border);
	FUNC2(cairo, swaynag->details.x, swaynag->details.y,
			swaynag->details.width, swaynag->details.height);
	FUNC0(cairo);

	FUNC1(cairo, swaynag->details.x + padding,
			swaynag->details.y + padding);
	FUNC3(cairo, swaynag->type->text);
	FUNC7(cairo, layout);
	FUNC4(layout);

	return ideal_height / swaynag->scale;
}