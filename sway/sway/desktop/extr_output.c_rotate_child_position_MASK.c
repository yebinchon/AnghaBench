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

/* Variables and functions */
 double FUNC0 (float) ; 
 double FUNC1 (float) ; 

__attribute__((used)) static void FUNC2(double *sx, double *sy, double sw, double sh,
		double pw, double ph, float rotation) {
	if (rotation == 0.0f) {
		return;
	}

	// Coordinates relative to the center of the subsurface
	double ox = *sx - pw/2 + sw/2,
		oy = *sy - ph/2 + sh/2;
	// Rotated coordinates
	double rx = FUNC0(-rotation)*ox - FUNC1(-rotation)*oy,
		ry = FUNC0(-rotation)*oy + FUNC1(-rotation)*ox;
	*sx = rx + pw/2 - sw/2;
	*sy = ry + ph/2 - sh/2;
}