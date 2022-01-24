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
typedef  enum background_mode { ____Placeholder_background_mode } background_mode ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
typedef  int /*<<< orphan*/  cairo_pattern_t ;

/* Variables and functions */
#define  BACKGROUND_MODE_CENTER 134 
#define  BACKGROUND_MODE_FILL 133 
#define  BACKGROUND_MODE_FIT 132 
#define  BACKGROUND_MODE_INVALID 131 
#define  BACKGROUND_MODE_SOLID_COLOR 130 
#define  BACKGROUND_MODE_STRETCH 129 
#define  BACKGROUND_MODE_TILE 128 
 int /*<<< orphan*/  CAIRO_EXTEND_REPEAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double,double) ; 

void FUNC11(cairo_t *cairo, cairo_surface_t *image,
		enum background_mode mode, int buffer_width, int buffer_height) {
	double width = FUNC2(image);
	double height = FUNC1(image);

	FUNC7(cairo);
	switch (mode) {
	case BACKGROUND_MODE_STRETCH:
		FUNC8(cairo,
				(double)buffer_width / width,
				(double)buffer_height / height);
		FUNC10(cairo, image, 0, 0);
		break;
	case BACKGROUND_MODE_FILL: {
		double window_ratio = (double)buffer_width / buffer_height;
		double bg_ratio = width / height;

		if (window_ratio > bg_ratio) {
			double scale = (double)buffer_width / width;
			FUNC8(cairo, scale, scale);
			FUNC10(cairo, image,
					0, (double)buffer_height / 2 / scale - height / 2);
		} else {
			double scale = (double)buffer_height / height;
			FUNC8(cairo, scale, scale);
			FUNC10(cairo, image,
					(double)buffer_width / 2 / scale - width / 2, 0);
		}
		break;
	}
	case BACKGROUND_MODE_FIT: {
		double window_ratio = (double)buffer_width / buffer_height;
		double bg_ratio = width / height;

		if (window_ratio > bg_ratio) {
			double scale = (double)buffer_height / height;
			FUNC8(cairo, scale, scale);
			FUNC10(cairo, image,
					(double)buffer_width / 2 / scale - width / 2, 0);
		} else {
			double scale = (double)buffer_width / width;
			FUNC8(cairo, scale, scale);
			FUNC10(cairo, image,
					0, (double)buffer_height / 2 / scale - height / 2);
		}
		break;
	}
	case BACKGROUND_MODE_CENTER:
		FUNC10(cairo, image,
				(double)buffer_width / 2 - width / 2,
				(double)buffer_height / 2 - height / 2);
		break;
	case BACKGROUND_MODE_TILE: {
		cairo_pattern_t *pattern = FUNC4(image);
		FUNC5(pattern, CAIRO_EXTEND_REPEAT);
		FUNC9(cairo, pattern);
		break;
	}
	case BACKGROUND_MODE_SOLID_COLOR:
	case BACKGROUND_MODE_INVALID:
		FUNC0(0);
		break;
	}
	FUNC3(cairo);
	FUNC6(cairo);
}