#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {float x1; float x0; float y1; float y0; } ;
typedef  TYPE_1__ fz_rect ;
struct TYPE_10__ {int /*<<< orphan*/  f; int /*<<< orphan*/  e; } ;
typedef  TYPE_2__ fz_matrix ;

/* Variables and functions */
 float FUNC0 (float) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (float,float) ; 
 TYPE_1__ FUNC3 (TYPE_1__,TYPE_2__) ; 

fz_matrix
FUNC4(fz_rect mediabox, float resolution, float rotate)
{
	float user_w, user_h, pixel_w, pixel_h;
	fz_rect pixel_box;
	fz_matrix matrix;

	/* Adjust scaling factors to cover whole pixels */
	user_w = mediabox.x1 - mediabox.x0;
	user_h = mediabox.y1 - mediabox.y0;
	pixel_w = FUNC0(user_w * resolution / 72 + 0.5f);
	pixel_h = FUNC0(user_h * resolution / 72 + 0.5f);

	matrix = FUNC1(FUNC2(pixel_w / user_w, pixel_h / user_h), rotate);

	/* Adjust the page origin to sit at 0,0 after rotation */
	pixel_box = FUNC3(mediabox, matrix);
	matrix.e -= pixel_box.x0;
	matrix.f -= pixel_box.y0;

	return matrix;
}