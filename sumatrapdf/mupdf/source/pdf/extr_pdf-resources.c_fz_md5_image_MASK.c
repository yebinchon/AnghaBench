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
struct TYPE_4__ {unsigned char* samples; int h; int w; int n; int /*<<< orphan*/  stride; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_md5 ;
typedef  int /*<<< orphan*/  fz_image ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_image *image, unsigned char digest[16])
{
	fz_pixmap *pixmap;
	fz_md5 state;
	int h;
	unsigned char *d;

	pixmap = FUNC1(ctx, image, NULL, NULL, 0, 0);
	FUNC3(&state);
	d = pixmap->samples;
	h = pixmap->h;
	while (h--)
	{
		FUNC4(&state, d, pixmap->w * pixmap->n);
		d += pixmap->stride;
	}
	FUNC2(&state, digest);
	FUNC0(ctx, pixmap);
}