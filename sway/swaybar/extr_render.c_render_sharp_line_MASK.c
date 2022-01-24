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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  cairo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_ANTIALIAS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,double,double,double) ; 

__attribute__((used)) static void FUNC9(cairo_t *cairo, uint32_t color,
		double x, double y, double width, double height) {
	if (width > 1 && height > 1) {
		FUNC8(cairo, color, x, y, width, height);
	} else {
		FUNC3(cairo);
		FUNC6(cairo, color);
		FUNC4(cairo, CAIRO_ANTIALIAS_NONE);
		if (width == 1) {
			x += 0.5;
			height += y;
			width = x;
		}
		if (height == 1) {
			y += 0.5;
			width += x;
			height = y;
		}
		FUNC1(cairo, x, y);
		FUNC5(cairo, 1.0);
		FUNC0(cairo, width, height);
		FUNC7(cairo);
		FUNC2(cairo);
	}
}