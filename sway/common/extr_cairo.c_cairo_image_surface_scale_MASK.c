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
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

cairo_surface_t *FUNC8(cairo_surface_t *image,
		int width, int height) {
	int image_width = FUNC4(image);
	int image_height = FUNC3(image);

	cairo_surface_t *new =
		FUNC2(CAIRO_FORMAT_ARGB32, width, height);
	cairo_t *cairo = FUNC0(new);
	FUNC6(cairo, (double)width / image_width,
			(double)height / image_height);
	FUNC7(cairo, image, 0, 0);

	FUNC5(cairo);
	FUNC1(cairo);
	return new;
}