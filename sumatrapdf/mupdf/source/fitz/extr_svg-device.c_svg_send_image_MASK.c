#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int num_images; int max_images; TYPE_7__* images; int /*<<< orphan*/  id; scalar_t__ reuse_images; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ svg_device ;
typedef  int /*<<< orphan*/  fz_output ;
struct TYPE_13__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_2__ fz_image ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_color_params ;
struct TYPE_14__ {int id; TYPE_2__* image; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *,TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  image ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, svg_device *sdev, fz_image *img, fz_color_params color_params)
{
	fz_output *out = sdev->out;
	int i;
	int id;

	if (sdev->reuse_images)
	{
		for (i = sdev->num_images-1; i >= 0; i--)
			if (img == sdev->images[i].image)
				break;
		if (i >= 0)
		{
			FUNC4(ctx, out, "<use xlink:href=\"#im%d\" x=\"0\" y=\"0\" width=\"%d\" height=\"%d\"/>\n",
					sdev->images[i].id, img->w, img->h);
			return;
		}

		/* We need to send this image for the first time */
		if (sdev->num_images == sdev->max_images)
		{
			int new_max = sdev->max_images * 2;
			if (new_max == 0)
				new_max = 32;
			sdev->images = FUNC2(ctx, sdev->images, new_max, image);
			sdev->max_images = new_max;
		}

		id = sdev->id++;
		out = FUNC5(ctx, sdev);
		FUNC4(ctx, out, "<symbol id=\"im%d\" viewBox=\"0 0 %d %d\">\n", id, img->w, img->h);

		FUNC4(ctx, out, "<image width=\"%d\" height=\"%d\" xlink:href=\"", img->w, img->h);
		FUNC3(ctx, out, img);
		FUNC4(ctx, out, "\"/>\n");

		FUNC4(ctx, out, "</symbol>\n");
		out = FUNC0(ctx, sdev);

		sdev->images[sdev->num_images].id = id;
		sdev->images[sdev->num_images].image = FUNC1(ctx, img);
		sdev->num_images++;

		FUNC4(ctx, out, "<use xlink:href=\"#im%d\" x=\"0\" y=\"0\" width=\"%d\" height=\"%d\"/>\n",
				id, img->w, img->h);
	}
	else
	{
		FUNC4(ctx, out, "<image width=\"%d\" height=\"%d\" xlink:href=\"", img->w, img->h);
		FUNC3(ctx, out, img);
		FUNC4(ctx, out, "\"/>\n");
	}
}