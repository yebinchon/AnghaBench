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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_3__ {int /*<<< orphan*/ * doc; } ;
typedef  TYPE_1__ globals ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Annots ; 
 int /*<<< orphan*/  Count ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  Dests ; 
 int /*<<< orphan*/  Kids ; 
 int /*<<< orphan*/  Link ; 
 int /*<<< orphan*/  Names ; 
 int /*<<< orphan*/  OCProperties ; 
 int /*<<< orphan*/  Outlines ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pages ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  Subtype ; 
 int /*<<< orphan*/  Type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC34(fz_context *ctx, globals *glo, int argc, char **argv)
{
	pdf_obj *oldroot, *root, *pages, *kids, *countobj, *olddests;
	pdf_document *doc = glo->doc;
	int argidx = 0;
	pdf_obj *names_list = NULL;
	pdf_obj *outlines;
	pdf_obj *ocproperties;
	int pagecount;
	int i;
	int *page_object_nums;

	/* Keep only pages/type and (reduced) dest entries to avoid
	 * references to unretained pages */
	oldroot = FUNC13(ctx, FUNC29(ctx, doc), FUNC0(Root));
	pages = FUNC13(ctx, oldroot, FUNC0(Pages));
	olddests = FUNC20(ctx, doc, FUNC0(Dests));
	outlines = FUNC13(ctx, oldroot, FUNC0(Outlines));
	ocproperties = FUNC13(ctx, oldroot, FUNC0(OCProperties));

	root = FUNC24(ctx, doc, 3);
	FUNC17(ctx, root, FUNC0(Type), FUNC13(ctx, oldroot, FUNC0(Type)));
	FUNC17(ctx, root, FUNC0(Pages), FUNC13(ctx, oldroot, FUNC0(Pages)));
	if (outlines)
		FUNC17(ctx, root, FUNC0(Outlines), outlines);
	if (ocproperties)
		FUNC17(ctx, root, FUNC0(OCProperties), ocproperties);

	FUNC30(ctx, doc, FUNC28(ctx, oldroot), root);

	/* Create a new kids array with only the pages we want to keep */
	kids = FUNC23(ctx, doc, 1);

	/* Retain pages specified */
	while (argc - argidx)
	{
		int page, spage, epage;
		const char *pagelist = argv[argidx];

		pagecount = FUNC11(ctx, doc);

		while ((pagelist = FUNC5(ctx, pagelist, &spage, &epage, pagecount)))
		{
			if (spage < epage)
				for (page = spage; page <= epage; ++page)
					FUNC31(ctx, doc, pages, kids, page);
			else
				for (page = spage; page >= epage; --page)
					FUNC31(ctx, doc, pages, kids, page);
		}

		argidx++;
	}

	/* Update page count and kids array */
	countobj = FUNC25(ctx, FUNC8(ctx, kids));
	FUNC18(ctx, pages, FUNC0(Count), countobj);
	FUNC18(ctx, pages, FUNC0(Kids), kids);

	pagecount = FUNC11(ctx, doc);
	page_object_nums = FUNC3(ctx, pagecount, sizeof(*page_object_nums));
	for (i = 0; i < pagecount; i++)
	{
		pdf_obj *pageref = FUNC21(ctx, doc, i);
		page_object_nums[i] = FUNC28(ctx, pageref);
	}

	/* If we had an old Dests tree (now reformed as an olddests
	 * dictionary), keep any entries in there that point to
	 * valid pages. This may mean we keep more than we need, but
	 * it's safe at least. */
	if (olddests)
	{
		pdf_obj *names = FUNC24(ctx, doc, 1);
		pdf_obj *dests = FUNC24(ctx, doc, 1);
		int len = FUNC16(ctx, olddests);

		names_list = FUNC23(ctx, doc, 32);

		for (i = 0; i < len; i++)
		{
			pdf_obj *key = FUNC14(ctx, olddests, i);
			pdf_obj *val = FUNC15(ctx, olddests, i);
			pdf_obj *dest = FUNC13(ctx, val, FUNC0(D));

			dest = FUNC7(ctx, dest ? dest : val, 0);
			if (FUNC2(ctx, dest, page_object_nums, pagecount))
			{
				pdf_obj *key_str = FUNC26(ctx, FUNC27(ctx, key), FUNC33(FUNC27(ctx, key)));
				FUNC10(ctx, names_list, key_str);
				FUNC9(ctx, names_list, val);
			}
		}

		FUNC17(ctx, dests, FUNC0(Names), names_list);
		FUNC17(ctx, names, FUNC0(Dests), dests);
		FUNC17(ctx, root, FUNC0(Names), names);

		FUNC19(ctx, names);
		FUNC19(ctx, dests);
		FUNC19(ctx, olddests);
	}

	/* Edit each pages /Annot list to remove any links that point to nowhere. */
	for (i = 0; i < pagecount; i++)
	{
		pdf_obj *pageref = FUNC21(ctx, doc, i);

		pdf_obj *annots = FUNC13(ctx, pageref, FUNC0(Annots));

		int len = FUNC8(ctx, annots);
		int j;

		for (j = 0; j < len; j++)
		{
			pdf_obj *o = FUNC7(ctx, annots, j);

			if (!FUNC22(ctx, FUNC13(ctx, o, FUNC0(Subtype)), FUNC0(Link)))
				continue;

			if (!FUNC1(ctx, o, pagecount, page_object_nums, names_list))
			{
				/* Remove this annotation */
				FUNC6(ctx, annots, j);
				len--;
				j--;
			}
		}
	}

	if (FUNC32(ctx, doc, outlines, pagecount, page_object_nums, names_list) == 0)
	{
		FUNC12(ctx, root, FUNC0(Outlines));
	}

	FUNC4(ctx, page_object_nums);
	FUNC19(ctx, names_list);
	FUNC19(ctx, root);
}