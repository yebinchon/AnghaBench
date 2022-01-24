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
struct TYPE_6__ {unsigned char* samples; int n; int h; int w; int stride; TYPE_1__* colorspace; } ;
typedef  TYPE_2__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_5__ {int type; } ;

/* Variables and functions */
 int FZ_COLORSPACE_BGR ; 
 int FZ_COLORSPACE_GRAY ; 
 int FZ_COLORSPACE_NONE ; 
 int FZ_COLORSPACE_RGB ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char*) ; 

void
FUNC3(fz_context *ctx, fz_pixmap *pix)
{
	unsigned char *s = pix->samples;
	int x, y, n = pix->n;
	int type = pix->colorspace ? pix->colorspace->type : FZ_COLORSPACE_NONE;

	if (type == FZ_COLORSPACE_GRAY)
	{
		FUNC0(ctx, pix);
	}
	else if (type == FZ_COLORSPACE_RGB || type == FZ_COLORSPACE_BGR)
	{
		for (y = 0; y < pix->h; y++)
		{
			for (x = 0; x < pix->w; x++)
			{
				FUNC2(type, s);
				s += n;
			}
			s += pix->stride - pix->w * n;
		}
	}
	else
	{
		FUNC1(ctx, FZ_ERROR_GENERIC, "can only invert luminance of Gray and RGB pixmaps");
	}
}