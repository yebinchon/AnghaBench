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
struct TYPE_5__ {TYPE_2__* image; } ;
typedef  TYPE_1__ img_page ;
typedef  int /*<<< orphan*/  fz_page ;
typedef  int /*<<< orphan*/  fz_matrix ;
struct TYPE_6__ {int w; int h; } ;
typedef  TYPE_2__ fz_image ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_cookie ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int DPI ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,float) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_page *page_, fz_device *dev, fz_matrix ctm, fz_cookie *cookie)
{
	img_page *page = (img_page*)page_;
	fz_image *image = page->image;
	int xres, yres;
	float w, h;

	FUNC1(image, &xres, &yres);
	w = image->w * DPI / xres;
	h = image->h * DPI / yres;
	ctm = FUNC2(ctm, w, h);
	FUNC0(ctx, dev, image, ctm, 1, fz_default_color_params);
}