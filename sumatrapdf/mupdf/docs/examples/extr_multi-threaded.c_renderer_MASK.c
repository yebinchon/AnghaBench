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
struct data {int pagenumber; int /*<<< orphan*/ * pix; int /*<<< orphan*/  bbox; int /*<<< orphan*/ * list; int /*<<< orphan*/ * ctx; } ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_display_list ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fz_identity ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

void *
FUNC7(void *data)
{
	int pagenumber = ((struct data *) data)->pagenumber;
	fz_context *ctx = ((struct data *) data)->ctx;
	fz_display_list *list = ((struct data *) data)->list;
	fz_rect bbox = ((struct data *) data)->bbox;
	fz_pixmap *pix = ((struct data *) data)->pix;
	fz_device *dev;

	FUNC0(stderr, "thread at page %d loading!\n", pagenumber);

	// The context pointer is pointing to the main thread's
	// context, so here we create a new context based on it for
	// use in this thread.

	ctx = FUNC1(ctx);

	// Next we run the display list through the draw device which
	// will render the request area of the page to the pixmap.

	FUNC0(stderr, "thread at page %d rendering!\n", pagenumber);
	dev = FUNC5(ctx, &fz_identity, pix);
	FUNC6(ctx, list, dev, &fz_identity, &bbox, NULL);
	FUNC2(ctx, dev);
	FUNC4(ctx, dev);

	// This threads context is freed.

	FUNC3(ctx);

	FUNC0(stderr, "thread at page %d done!\n", pagenumber);

	return data;
}