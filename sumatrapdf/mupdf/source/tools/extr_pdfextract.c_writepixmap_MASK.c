#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_6__* colorspace; } ;
typedef  TYPE_1__ fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_11__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ FZ_COLORSPACE_GRAY ; 
 scalar_t__ FZ_COLORSPACE_RGB ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(fz_context *ctx, fz_pixmap *pix, char *file, int dorgb)
{
	char buf[1024];
	fz_pixmap *rgb = NULL;

	if (!pix)
		return;

	if (dorgb && pix->colorspace && pix->colorspace != FUNC1(ctx))
	{
		rgb = FUNC0(ctx, pix, FUNC1(ctx), NULL, NULL, fz_default_color_params /* FIXME */, 1);
		pix = rgb;
	}

	if (!pix->colorspace || pix->colorspace->type == FZ_COLORSPACE_GRAY || pix->colorspace->type == FZ_COLORSPACE_RGB)
	{
		FUNC5(buf, sizeof(buf), "%s.png", file);
		FUNC6("extracting image %s\n", buf);
		FUNC4(ctx, pix, buf);
	}
	else
	{
		FUNC5(buf, sizeof(buf), "%s.pam", file);
		FUNC6("extracting image %s\n", buf);
		FUNC3(ctx, pix, buf);
	}

	FUNC2(ctx, rgb);
}