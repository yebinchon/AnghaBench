#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  out; int /*<<< orphan*/  do_ascii; int /*<<< orphan*/  do_tight; scalar_t__ do_incremental; int /*<<< orphan*/  first_xref_entry_offset; } ;
typedef  TYPE_1__ pdf_write_state ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_11__ {int startxref; scalar_t__ has_xref_streams; } ;
typedef  TYPE_2__ pdf_document ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Encrypt ; 
 int /*<<< orphan*/  ID ; 
 int /*<<< orphan*/  Info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Prev ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  Size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC18(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, int from, int to, int first, int64_t main_xref_offset, int64_t startxref)
{
	pdf_obj *trailer = NULL;
	pdf_obj *obj;
	pdf_obj *nobj = NULL;

	FUNC4(ctx, opts->out, "xref\n");
	opts->first_xref_entry_offset = FUNC1(ctx, opts->out);

	if (opts->do_incremental)
	{
		int subfrom = from;
		int subto;

		while (subfrom < to)
		{
			while (subfrom < to && !FUNC15(ctx, doc, subfrom))
				subfrom++;

			subto = subfrom;
			while (subto < to && FUNC15(ctx, doc, subto))
				subto++;

			if (subfrom < subto)
				FUNC17(ctx, opts, subfrom, subto);

			subfrom = subto;
		}
	}
	else
	{
		FUNC17(ctx, opts, from, to);
	}

	FUNC4(ctx, opts->out, "\n");

	FUNC2(trailer);

	if (opts->do_incremental)
	{
		trailer = FUNC10(ctx, FUNC14(ctx, doc));
		FUNC8(ctx, trailer, FUNC0(Size), FUNC16(ctx, doc));
		FUNC8(ctx, trailer, FUNC0(Prev), doc->startxref);
		doc->startxref = startxref;
	}
	else
	{
		trailer = FUNC11(ctx, doc, 5);

		nobj = FUNC12(ctx, to);
		FUNC7(ctx, trailer, FUNC0(Size), nobj);

		if (first)
		{
			obj = FUNC5(ctx, FUNC14(ctx, doc), FUNC0(Info));
			if (obj)
				FUNC6(ctx, trailer, FUNC0(Info), obj);

			obj = FUNC5(ctx, FUNC14(ctx, doc), FUNC0(Root));
			if (obj)
				FUNC6(ctx, trailer, FUNC0(Root), obj);

			obj = FUNC5(ctx, FUNC14(ctx, doc), FUNC0(ID));
			if (obj)
				FUNC6(ctx, trailer, FUNC0(ID), obj);

			obj = FUNC5(ctx, FUNC14(ctx, doc), FUNC0(Encrypt));
			if (obj)
				FUNC6(ctx, trailer, FUNC0(Encrypt), obj);
		}
		if (main_xref_offset != 0)
		{
			nobj = FUNC12(ctx, main_xref_offset);
			FUNC7(ctx, trailer, FUNC0(Prev), nobj);
		}
	}

	FUNC4(ctx, opts->out, "trailer\n");
	/* Trailer is NOT encrypted */
	FUNC13(ctx, opts->out, trailer, opts->do_tight, opts->do_ascii);
	FUNC4(ctx, opts->out, "\n");

	FUNC9(ctx, trailer);

	FUNC3(ctx, opts->out, "startxref\n%lu\n%%%%EOF\n", startxref);

	doc->has_xref_streams = 0;
}