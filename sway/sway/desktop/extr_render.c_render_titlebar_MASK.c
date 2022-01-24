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
struct wlr_box {int x; int y; int width; int height; } ;
struct sway_output {double lx; double ly; TYPE_1__* wlr_output; } ;
struct sway_container {int title_baseline; int /*<<< orphan*/  alpha; } ;
struct border_colors {int /*<<< orphan*/  background; int /*<<< orphan*/  border; } ;
typedef  int /*<<< orphan*/  pixman_region32_t ;
typedef  enum alignment { ____Placeholder_alignment } alignment ;
struct TYPE_4__ {int titlebar_border_thickness; int titlebar_h_padding; int titlebar_v_padding; int title_align; int font_height; int font_baseline; scalar_t__ show_marks; } ;
struct TYPE_3__ {float scale; int /*<<< orphan*/  transform_matrix; } ;

/* Variables and functions */
 int ALIGN_CENTER ; 
 int ALIGN_LEFT ; 
 int ALIGN_RIGHT ; 
 int /*<<< orphan*/  WL_OUTPUT_TRANSFORM_NORMAL ; 
 int FUNC0 (int) ; 
 TYPE_2__* config ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (float**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_output*,int /*<<< orphan*/ *,struct wlr_box*,float*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,struct wlr_texture*,struct wlr_box*,float*,int /*<<< orphan*/ ) ; 
 int FUNC7 (double) ; 
 int /*<<< orphan*/  FUNC8 (struct wlr_box*,float) ; 
 int FUNC9 (int,int,float) ; 
 int /*<<< orphan*/  FUNC10 (float*,struct wlr_box*,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wlr_texture*,int*,int*) ; 

__attribute__((used)) static void FUNC12(struct sway_output *output,
		pixman_region32_t *output_damage, struct sway_container *con,
		int x, int y, int width,
		struct border_colors *colors, struct wlr_texture *title_texture,
		struct wlr_texture *marks_texture) {
	struct wlr_box box;
	float color[4];
	float output_scale = output->wlr_output->scale;
	double output_x = output->lx;
	double output_y = output->ly;
	int titlebar_border_thickness = config->titlebar_border_thickness;
	int titlebar_h_padding = config->titlebar_h_padding;
	int titlebar_v_padding = config->titlebar_v_padding;
	enum alignment title_align = config->title_align;

	// Single pixel bar above title
	FUNC3(&color, colors->border, sizeof(float) * 4);
	FUNC4(color, con->alpha);
	box.x = x;
	box.y = y;
	box.width = width;
	box.height = titlebar_border_thickness;
	FUNC8(&box, output_scale);
	FUNC5(output, output_damage, &box, color);

	// Single pixel bar below title
	box.x = x;
	box.y = y + FUNC1() - titlebar_border_thickness;
	box.width = width;
	box.height = titlebar_border_thickness;
	FUNC8(&box, output_scale);
	FUNC5(output, output_damage, &box, color);

	// Single pixel left edge
	box.x = x;
	box.y = y + titlebar_border_thickness;
	box.width = titlebar_border_thickness;
	box.height = FUNC1() - titlebar_border_thickness * 2;
	FUNC8(&box, output_scale);
	FUNC5(output, output_damage, &box, color);

	// Single pixel right edge
	box.x = x + width - titlebar_border_thickness;
	box.y = y + titlebar_border_thickness;
	box.width = titlebar_border_thickness;
	box.height = FUNC1() - titlebar_border_thickness * 2;
	FUNC8(&box, output_scale);
	FUNC5(output, output_damage, &box, color);

	int inner_x = x - output_x + titlebar_h_padding;
	int bg_y = y + titlebar_border_thickness;
	size_t inner_width = width - titlebar_h_padding * 2;

	// output-buffer local
	int ob_inner_x = FUNC7(inner_x * output_scale);
	int ob_inner_width = FUNC9(inner_width, inner_x, output_scale);
	int ob_bg_height = FUNC9(
			(titlebar_v_padding - titlebar_border_thickness) * 2 +
			config->font_height, bg_y, output_scale);

	// Marks
	int ob_marks_x = 0; // output-buffer-local
	int ob_marks_width = 0; // output-buffer-local
	if (config->show_marks && marks_texture) {
		struct wlr_box texture_box;
		FUNC11(marks_texture,
			&texture_box.width, &texture_box.height);
		ob_marks_width = texture_box.width;

		// The marks texture might be shorter than the config->font_height, in
		// which case we need to pad it as evenly as possible above and below.
		int ob_padding_total = ob_bg_height - texture_box.height;
		int ob_padding_above = FUNC2(ob_padding_total / 2.0);
		int ob_padding_below = FUNC0(ob_padding_total / 2.0);

		// Render texture. If the title is on the right, the marks will be on
		// the left. Otherwise, they will be on the right.
		if (title_align == ALIGN_RIGHT || texture_box.width > ob_inner_width) {
			texture_box.x = ob_inner_x;
		} else {
			texture_box.x = ob_inner_x + ob_inner_width - texture_box.width;
		}
		ob_marks_x = texture_box.x;

		texture_box.y = FUNC7((bg_y - output_y) * output_scale) +
			ob_padding_above;

		float matrix[9];
		FUNC10(matrix, &texture_box,
			WL_OUTPUT_TRANSFORM_NORMAL,
			0.0, output->wlr_output->transform_matrix);

		if (ob_inner_width < texture_box.width) {
			texture_box.width = ob_inner_width;
		}
		FUNC6(output->wlr_output, output_damage, marks_texture,
			&texture_box, matrix, con->alpha);

		// Padding above
		FUNC3(&color, colors->background, sizeof(float) * 4);
		FUNC4(color, con->alpha);
		box.x = texture_box.x + FUNC7(output_x * output_scale);
		box.y = FUNC7((y + titlebar_border_thickness) * output_scale);
		box.width = texture_box.width;
		box.height = ob_padding_above;
		FUNC5(output, output_damage, &box, color);

		// Padding below
		box.y += ob_padding_above + texture_box.height;
		box.height = ob_padding_below;
		FUNC5(output, output_damage, &box, color);
	}

	// Title text
	int ob_title_x = 0;  // output-buffer-local
	int ob_title_width = 0; // output-buffer-local
	if (title_texture) {
		struct wlr_box texture_box;
		FUNC11(title_texture,
			&texture_box.width, &texture_box.height);
		ob_title_width = texture_box.width;

		// The title texture might be shorter than the config->font_height,
		// in which case we need to pad it above and below.
		int ob_padding_above = FUNC7((config->font_baseline -
					con->title_baseline + titlebar_v_padding -
					titlebar_border_thickness) * output_scale);
		int ob_padding_below = ob_bg_height - ob_padding_above -
			texture_box.height;

		// Render texture
		if (texture_box.width > ob_inner_width - ob_marks_width) {
			texture_box.x = (title_align == ALIGN_RIGHT && ob_marks_width)
				? ob_marks_x + ob_marks_width : ob_inner_x;
		} else if (title_align == ALIGN_LEFT) {
			texture_box.x = ob_inner_x;
		} else if (title_align == ALIGN_CENTER) {
			// If there are marks visible, center between the edge and marks.
			// Otherwise, center in the inner area.
			if (ob_marks_width) {
				texture_box.x = (ob_inner_x + ob_marks_x) / 2
					- texture_box.width / 2;
			} else {
				texture_box.x = ob_inner_x + ob_inner_width / 2
					- texture_box.width / 2;
			}
		} else {
			texture_box.x = ob_inner_x + ob_inner_width - texture_box.width;
		}
		ob_title_x = texture_box.x;

		texture_box.y =
			FUNC7((bg_y - output_y) * output_scale) + ob_padding_above;

		float matrix[9];
		FUNC10(matrix, &texture_box,
			WL_OUTPUT_TRANSFORM_NORMAL,
			0.0, output->wlr_output->transform_matrix);

		if (ob_inner_width - ob_marks_width < texture_box.width) {
			texture_box.width = ob_inner_width - ob_marks_width;
		}

		FUNC6(output->wlr_output, output_damage, title_texture,
			&texture_box, matrix, con->alpha);

		// Padding above
		FUNC3(&color, colors->background, sizeof(float) * 4);
		FUNC4(color, con->alpha);
		box.x = texture_box.x + FUNC7(output_x * output_scale);
		box.y = FUNC7((y + titlebar_border_thickness) * output_scale);
		box.width = texture_box.width;
		box.height = ob_padding_above;
		FUNC5(output, output_damage, &box, color);

		// Padding below
		box.y += ob_padding_above + texture_box.height;
		box.height = ob_padding_below;
		FUNC5(output, output_damage, &box, color);
	}

	// Determine the left + right extends of the textures (output-buffer local)
	int ob_left_x, ob_left_width, ob_right_x, ob_right_width;
	if (ob_title_width == 0 && ob_marks_width == 0) {
		ob_left_x = ob_inner_x;
		ob_left_width = 0;
		ob_right_x = ob_inner_x;
		ob_right_width = 0;
	} else if (ob_title_x < ob_marks_x) {
		ob_left_x = ob_title_x;
		ob_left_width = ob_title_width;
		ob_right_x = ob_marks_x;
		ob_right_width = ob_marks_width;
	} else {
		ob_left_x = ob_marks_x;
		ob_left_width = ob_marks_width;
		ob_right_x = ob_title_x;
		ob_right_width = ob_title_width;
	}
	if (ob_left_x < ob_inner_x) {
		ob_left_x = ob_inner_x;
	} else if (ob_left_x + ob_left_width > ob_right_x + ob_right_width) {
		ob_right_x = ob_left_x;
		ob_right_width = ob_left_width;
	}

	// Filler between title and marks
	box.width = ob_right_x - ob_left_x - ob_left_width;
	if (box.width > 0) {
		box.x = ob_left_x + ob_left_width + FUNC7(output_x * output_scale);
		box.y = FUNC7(bg_y * output_scale);
		box.height = ob_bg_height;
		FUNC5(output, output_damage, &box, color);
	}

	// Padding on left side
	box.x = x + titlebar_border_thickness;
	box.y = y + titlebar_border_thickness;
	box.width = titlebar_h_padding - titlebar_border_thickness;
	box.height = (titlebar_v_padding - titlebar_border_thickness) * 2 +
		config->font_height;
	FUNC8(&box, output_scale);
	int left_x = ob_left_x + FUNC7(output_x * output_scale);
	if (box.x + box.width < left_x) {
		box.width += left_x - box.x - box.width;
	}
	FUNC5(output, output_damage, &box, color);

	// Padding on right side
	box.x = x + width - titlebar_h_padding;
	box.y = y + titlebar_border_thickness;
	box.width = titlebar_h_padding - titlebar_border_thickness;
	box.height = (titlebar_v_padding - titlebar_border_thickness) * 2 +
		config->font_height;
	FUNC8(&box, output_scale);
	int right_rx = ob_right_x + ob_right_width + FUNC7(output_x * output_scale);
	if (right_rx < box.x) {
		box.width += box.x - right_rx;
		box.x = right_rx;
	}
	FUNC5(output, output_damage, &box, color);
}