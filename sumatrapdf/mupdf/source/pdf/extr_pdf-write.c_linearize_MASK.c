#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* use_list; int start; int* renumber_map; int* rev_renumber_map; int /*<<< orphan*/  page_object_lists; } ;
typedef  TYPE_1__ pdf_write_state ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int USE_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  order_ge ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC14(fz_context *ctx, pdf_document *doc, pdf_write_state *opts)
{
	int i;
	int n = FUNC12(ctx, doc) + 2;
	int *reorder;
	int *rev_renumber_map;

	opts->page_object_lists = FUNC7(ctx);

	/* Ensure that every page has local references of its resources */
	/* FIXME: We could 'thin' the resources according to what is actually
	 * required for each page, but this would require us to run the page
	 * content streams. */
	FUNC10(ctx, doc);

	/* Walk the objects for each page, marking which ones are used, where */
	FUNC6(opts->use_list, 0, n * sizeof(int));
	FUNC5(ctx, doc, opts, FUNC11(ctx, doc));

	/* Add new objects required for linearization */
	FUNC0(ctx, doc, opts);

#ifdef DEBUG_WRITING
	fprintf(stderr, "Usage calculated:\n");
	for (i=0; i < pdf_xref_len(ctx, doc); i++)
	{
		fprintf(stderr, "%d: use=%d\n", i, opts->use_list[i]);
	}
#endif

	/* Allocate/init the structures used for renumbering the objects */
	reorder = FUNC2(ctx, n, sizeof(int));
	rev_renumber_map = FUNC2(ctx, n, sizeof(int));
	for (i = 0; i < n; i++)
	{
		reorder[i] = i;
	}

	/* Heap sort the reordering */
	FUNC4(reorder+1, n-1, opts->use_list, &order_ge);

#ifdef DEBUG_WRITING
	fprintf(stderr, "Reordered:\n");
	for (i=1; i < pdf_xref_len(ctx, doc); i++)
	{
		fprintf(stderr, "%d: use=%d\n", i, opts->use_list[reorder[i]]);
	}
#endif

	/* Find the split point */
	for (i = 1; (opts->use_list[reorder[i]] & USE_PARAMS) == 0; i++) {}
	opts->start = i;

	/* Roll the reordering into the renumber_map */
	for (i = 0; i < n; i++)
	{
		opts->renumber_map[reorder[i]] = i;
		rev_renumber_map[i] = opts->rev_renumber_map[reorder[i]];
	}
	FUNC3(ctx, opts->rev_renumber_map);
	opts->rev_renumber_map = rev_renumber_map;
	FUNC3(ctx, reorder);

	/* Apply the renumber_map */
	FUNC8(opts);
	FUNC13(ctx, doc, opts);

	FUNC9(ctx, opts->page_object_lists);
}