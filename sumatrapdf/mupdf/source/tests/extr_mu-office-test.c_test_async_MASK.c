#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int width; int height; int lineSkip; int /*<<< orphan*/  memptr; } ;
struct TYPE_9__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_10__ {TYPE_2__ renderArea; TYPE_1__ origin; } ;
typedef  TYPE_3__ MuOfficeRenderArea ;
typedef  int /*<<< orphan*/  MuOfficeRender ;
typedef  int /*<<< orphan*/  MuOfficePage ;
typedef  int /*<<< orphan*/  MuOfficeLib ;
typedef  int /*<<< orphan*/  MuOfficeDoc ;
typedef  TYPE_4__ MuOfficeBitmap ;
typedef  int MuError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,float*,float*) ; 
 int FUNC7 (int /*<<< orphan*/ *,float,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  load_error ; 
 int /*<<< orphan*/  load_progress ; 
 int /*<<< orphan*/ * loaded ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  render_progress ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC14(MuOfficeLib *mu)
{
	MuOfficeDoc *doc;
	MuError err;
	int count;
	MuOfficePage *page;
	float w, h;
	MuOfficeBitmap bitmap;
	MuOfficeRenderArea area;
	MuOfficeRender *render;

	err = FUNC4(mu,
					"../MyTests/pdf_reference17.pdf",
					load_progress,
					load_error,
					(void *)1234, /* Arbitrary */
					&doc);

	/* Wait for the load to complete */
	FUNC9(loaded, INFINITE);

	/* Test number of pages */
	err = FUNC2(doc, &count);
	if (err)
	{
		FUNC10(stderr, "Failed to count pages: error=%d\n", err);
		return EXIT_FAILURE;
	}
	FUNC10(stderr, "%d Pages in document\n", count);

	/* Get a page */
	err = FUNC3(doc, 0, NULL, (void *)4321, &page);
	if (err)
	{
		FUNC10(stderr, "Failed to get page: error=%d\n", err);
		return EXIT_FAILURE;
	}

	/* Get size of page */
	err = FUNC6(page, &w, &h);
	if (err)
	{
		FUNC10(stderr, "Failed to get page size: error=%d\n", err);
		return EXIT_FAILURE;
	}
	FUNC10(stderr, "Page size = %d x %g\n", w, h);

	/* Allocate ourselves a bitmap */
	bitmap.width = (int)(w * 1.5f + 0.5f);
	bitmap.height = (int)(h * 1.5f + 0.5f);
	bitmap.lineSkip = bitmap.width * 4;
	bitmap.memptr = FUNC12(bitmap.lineSkip * bitmap.height);

	/* Set the area to render the whole bitmap */
	area.origin.x = 0;
	area.origin.y = 0;
	area.renderArea.x = 0;
	area.renderArea.y = 0;
	area.renderArea.width = bitmap.width;
	area.renderArea.height = bitmap.height;

	/* Render into the bitmap */
	err = FUNC7(page, 1.5f, &bitmap, &area, render_progress, (void *)5678, &render);
	if (err)
	{
		FUNC10(stderr, "Page render failed: error=%d\n", err);
		return EXIT_FAILURE;
	}

	/* Wait for the render to complete */
	FUNC9(loaded, INFINITE);

	/* Kill the render */
	FUNC8(render);

	/* Output the bitmap */
	FUNC13(&bitmap, "out.png");
	FUNC11(bitmap.memptr);

	FUNC5(page);

	FUNC1(doc);

	FUNC0(loaded);
	loaded = NULL;

	return EXIT_SUCCESS;
}