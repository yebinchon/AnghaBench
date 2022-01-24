#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ invert; } ;
typedef  TYPE_1__ pdfapp_t ;
struct TYPE_10__ {int panx; int pany; int winh; int winw; int /*<<< orphan*/  selr; scalar_t__ iscopying; scalar_t__ image; int /*<<< orphan*/  ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  pixel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_5__ gapp ; 
 int justcopied ; 
 unsigned char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_2__ xbgcolor ; 
 int /*<<< orphan*/  xdpy ; 
 int /*<<< orphan*/  xgc ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  xwin ; 

__attribute__((used)) static void FUNC14(pdfapp_t *app)
{
	if (gapp.image)
	{
		int image_w = FUNC8(gapp.ctx, gapp.image);
		int image_h = FUNC6(gapp.ctx, gapp.image);
		int image_n = FUNC5(gapp.ctx, gapp.image);
		unsigned char *image_samples = FUNC7(gapp.ctx, gapp.image);
		int x0 = gapp.panx;
		int y0 = gapp.pany;
		int x1 = gapp.panx + image_w;
		int y1 = gapp.pany + image_h;

		if (app->invert)
			FUNC2(xdpy, xgc, FUNC0(xdpy, FUNC1(xdpy)));
		else
			FUNC2(xdpy, xgc, xbgcolor.pixel);
		FUNC3(0, 0, x0, gapp.winh);
		FUNC3(x1, 0, gapp.winw - x1, gapp.winh);
		FUNC3(0, 0, gapp.winw, y0);
		FUNC3(0, y1, gapp.winw, gapp.winh - y1);

		if (gapp.iscopying || justcopied)
		{
			FUNC10(&gapp, gapp.selr);
			justcopied = 1;
		}

		FUNC11(&gapp);

		if (image_n == 4)
			FUNC13(xwin, xgc,
				x0, y0,
				image_samples,
				0, 0,
				image_w,
				image_h,
				image_w * image_n);
		else if (image_n == 2)
		{
			int i = image_w*image_h;
			unsigned char *color = FUNC9(i*4);
			if (color)
			{
				unsigned char *s = image_samples;
				unsigned char *d = color;
				for (; i > 0 ; i--)
				{
					d[2] = d[1] = d[0] = *s++;
					d[3] = *s++;
					d += 4;
				}
				FUNC13(xwin, xgc,
					x0, y0,
					color,
					0, 0,
					image_w,
					image_h,
					image_w * 4);
				FUNC4(color);
			}
		}

		FUNC11(&gapp);

		if (gapp.iscopying || justcopied)
		{
			FUNC10(&gapp, gapp.selr);
			justcopied = 1;
		}
	}
	else
	{
		FUNC2(xdpy, xgc, xbgcolor.pixel);
		FUNC3(0, 0, gapp.winw, gapp.winh);
	}

	FUNC12(app);
}