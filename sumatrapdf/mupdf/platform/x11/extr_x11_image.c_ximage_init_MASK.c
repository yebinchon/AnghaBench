#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ depth; int /*<<< orphan*/  bits_per_pixel; int /*<<< orphan*/  visualid; } ;
typedef  TYPE_1__ XVisualInfo ;
typedef  TYPE_1__ XPixmapFormatValues ;
typedef  int /*<<< orphan*/  Visual ;
struct TYPE_11__ {scalar_t__ depth; } ;
struct TYPE_12__ {int screen; int shmcode; int useshm; int /*<<< orphan*/  bitsperpixel; TYPE_3__ visual; int /*<<< orphan*/ * display; scalar_t__ colormap; } ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  VisualIDMask ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__ info ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  ximage_error_handler ; 

int
FUNC13(Display *display, int screen, Visual *visual)
{
	XVisualInfo template;
	XVisualInfo *visuals;
	int nvisuals;
	XPixmapFormatValues *formats;
	int nformats;
	int ok;
	int i;
	int major;
	int event;
	int error;

	info.display = display;
	info.screen = screen;
	info.colormap = 0;

	/* Get XVisualInfo for this visual */
	template.visualid = FUNC6(visual);
	visuals = FUNC1(display, VisualIDMask, &template, &nvisuals);
	if (nvisuals != 1) {
		FUNC8(stderr, "Visual not found!\n");
		FUNC0(visuals);
		return 0;
	}
	FUNC10(&info.visual, visuals, sizeof (XVisualInfo));
	FUNC0(visuals);

	/* Get appropriate PixmapFormat for this visual */
	formats = FUNC2(info.display, &nformats);
	for (i = 0; i < nformats; i++) {
		if (formats[i].depth == info.visual.depth) {
			info.bitsperpixel = formats[i].bits_per_pixel;
			break;
		}
	}
	FUNC0(formats);
	if (i == nformats) {
		FUNC8(stderr, "PixmapFormat not found!\n");
		return 0;
	}

	/* extract mode */
	FUNC12();

	/* prepare colormap */
	FUNC9();

	/* identify code for MIT-SHM extension */
	if (FUNC3(display, "MIT-SHM", &major, &event, &error) &&
		FUNC5(display))
		info.shmcode = major;

	/* intercept errors looking for SHM code */
	FUNC4(ximage_error_handler);

	/* prepare pool of XImages */
	info.useshm = 1;
	ok = FUNC7();
	if (!ok)
		return 0;

#ifdef SHOWINFO
	printf("ximage: %sPutImage\n", info.useshm ? "XShm" : "X");
#endif

	return 1;
}