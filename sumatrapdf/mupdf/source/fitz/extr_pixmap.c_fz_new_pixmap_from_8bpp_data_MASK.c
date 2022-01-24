#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int stride; unsigned char* samples; int x; int y; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 

fz_pixmap *
FUNC2(fz_context *ctx, int x, int y, int w, int h, unsigned char *sp, int span)
{
	fz_pixmap *pixmap = FUNC0(ctx, NULL, w, h, NULL, 1);
	int stride = pixmap->stride;
	unsigned char *s = pixmap->samples;
	pixmap->x = x;
	pixmap->y = y;

	for (y = 0; y < h; y++)
	{
		FUNC1(s, sp + y * span, w);
		s += stride;
	}

	return pixmap;
}