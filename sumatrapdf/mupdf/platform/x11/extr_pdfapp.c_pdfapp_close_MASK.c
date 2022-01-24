#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  stream; int /*<<< orphan*/ * doc; int /*<<< orphan*/ * page; int /*<<< orphan*/ * outline; int /*<<< orphan*/ * old_image; int /*<<< orphan*/ * new_image; int /*<<< orphan*/ * image; int /*<<< orphan*/ * docpath; int /*<<< orphan*/ * doctitle; int /*<<< orphan*/ * page_links; int /*<<< orphan*/ * page_text; int /*<<< orphan*/ * seps; int /*<<< orphan*/ * annotations_list; int /*<<< orphan*/ * page_list; } ;
typedef  TYPE_1__ pdfapp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(pdfapp_t *app)
{
	FUNC0(app->ctx, app->page_list);
	app->page_list = NULL;

	FUNC0(app->ctx, app->annotations_list);
	app->annotations_list = NULL;

	FUNC6(app->ctx, app->seps);
	app->seps = NULL;

	FUNC7(app->ctx, app->page_text);
	app->page_text = NULL;

	FUNC2(app->ctx, app->page_links);
	app->page_links = NULL;

	FUNC10(app->ctx, app->doctitle);
	app->doctitle = NULL;

	FUNC10(app->ctx, app->docpath);
	app->docpath = NULL;

	FUNC5(app->ctx, app->image);
	app->image = NULL;

	FUNC5(app->ctx, app->new_image);
	app->new_image = NULL;

	FUNC5(app->ctx, app->old_image);
	app->old_image = NULL;

	FUNC3(app->ctx, app->outline);
	app->outline = NULL;

	FUNC4(app->ctx, app->page);
	app->page = NULL;

	FUNC1(app->ctx, app->doc);
	app->doc = NULL;

#ifdef HAVE_CURL
	fz_drop_stream(app->ctx, app->stream);
#endif

	FUNC9(app->ctx);
}