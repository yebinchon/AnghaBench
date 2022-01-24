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
struct data {int pagenumber; int /*<<< orphan*/ * list; int /*<<< orphan*/ * pix; int /*<<< orphan*/  bbox; int /*<<< orphan*/ * ctx; } ;
typedef  struct data pthread_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_page ;
struct TYPE_3__ {int /*<<< orphan*/  unlock; int /*<<< orphan*/  lock; int /*<<< orphan*/ * user; } ;
typedef  TYPE_1__ fz_locks_context ;
typedef  int /*<<< orphan*/  fz_irect ;
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_display_list ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FZ_LOCK_MAX ; 
 int /*<<< orphan*/  FZ_STORE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fz_identity ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  lock_mutex ; 
 struct data* FUNC25 (int) ; 
 scalar_t__ FUNC26 (struct data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct data*) ; 
 scalar_t__ FUNC27 (struct data,void**) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  renderer ; 
 int /*<<< orphan*/  FUNC29 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  unlock_mutex ; 

int FUNC30(int argc, char **argv)
{
	char *filename = argc >= 2 ? argv[1] : "";
	pthread_t *thread = NULL;
	fz_locks_context locks;
	pthread_mutex_t mutex[FZ_LOCK_MAX];
	fz_context *ctx;
	fz_document *doc;
	int threads;
	int i;

	// Initialize FZ_LOCK_MAX number of non-recursive mutexes.

	for (i = 0; i < FZ_LOCK_MAX; i++)
	{
		if (FUNC28(&mutex[i], NULL) != 0)
			FUNC0("pthread_mutex_init()");
	}

	// Initialize the locking structure with function pointers to
	// the locking functions and to the user data. In this case
	// the user data is a pointer to the array of mutexes so the
	// locking functions can find the relevant lock to change when
	// they are called. This way we avoid global variables.

	locks.user = mutex;
	locks.lock = lock_mutex;
	locks.unlock = unlock_mutex;

	// This is the main threads context function, so supply the
	// locking structure. This context will be used to parse all
	// the pages from the document.

	ctx = FUNC16(NULL, &locks, FZ_STORE_UNLIMITED);

	// Register default file types.

	FUNC21(ctx);

	// Open the PDF, XPS or CBZ document. Note, this binds doc to ctx.
	// You must only ever use doc with ctx - never a clone of it!

	doc = FUNC20(ctx, filename);

	// Retrieve the number of pages, which translates to the
	// number of threads used for rendering pages.

	threads = FUNC7(ctx, doc);
	FUNC2(stderr, "spawning %d threads, one per page...\n", threads);

	thread = FUNC25(threads * sizeof (pthread_t));

	for (i = 0; i < threads; i++)
	{
		fz_page *page;
		fz_rect bbox;
		fz_irect rbox;
		fz_display_list *list;
		fz_device *dev;
		fz_pixmap *pix;
		struct data *data;

		// Load the relevant page for each thread. Note, that this
		// cannot be done on the worker threads, as each use of doc
		// uses ctx, and only one thread can be using ctx at a time.

		page = FUNC15(ctx, doc, i);

		// Compute the bounding box for each page.

		FUNC4(ctx, page, &bbox);

		// Create a display list that will hold the drawing
		// commands for the page. Once we have the display list
		// this can safely be used on any other thread as it is
		// not bound to a given context.

		list = FUNC17(ctx, &bbox);

		// Run the loaded page through a display list device
		// to populate the page's display list.

		dev = FUNC18(ctx, list);
		FUNC23(ctx, page, dev, &fz_identity, NULL);
		FUNC6(ctx, dev);
		FUNC10(ctx, dev);

		// The page is no longer needed, all drawing commands
		// are now in the display list.

		FUNC13(ctx, page);

		// Create a white pixmap using the correct dimensions.

		pix = FUNC19(ctx, FUNC8(ctx), FUNC22(&rbox, &bbox), NULL, 0);
		FUNC5(ctx, pix, 0xff);

		// Populate the data structure to be sent to the
		// rendering thread for this page.

		data = FUNC25(sizeof (struct data));

		data->pagenumber = i + 1;
		data->ctx = ctx;
		data->list = list;
		data->bbox = bbox;
		data->pix = pix;

		// Create the thread and pass it the data structure.

		if (FUNC26(&thread[i], NULL, renderer, data) != 0)
			FUNC0("pthread_create()");
	}

	// Now each thread is rendering pages, so wait for each thread
	// to complete its rendering.

	FUNC2(stderr, "joining %d threads...\n", threads);
	for (i = threads - 1; i >= 0; i--)
	{
		char filename[42];
		struct data *data;

		if (FUNC27(thread[i], (void **) &data) != 0)
			FUNC0("pthread_join");

		FUNC29(filename, "out%04d.png", i);
		FUNC2(stderr, "\tSaving %s...\n", filename);

		// Write the rendered image to a PNG file

		FUNC24(ctx, data->pix, filename);

		// Free the thread's pixmap and display list since
		// they were allocated by the main thread above.

		FUNC14(ctx, data->pix);
		FUNC11(ctx, data->list);

		// Free the data structured passed back and forth
		// between the main thread and rendering thread.

		FUNC3(data);
	}

	FUNC2(stderr, "finally!\n");
	FUNC1(NULL);

	FUNC3(thread);

	// Finally the document is closed and the main thread's
	// context is freed.

	FUNC12(ctx, doc);
	FUNC9(ctx);

	return 0;
}