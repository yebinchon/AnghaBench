#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char type; int gen; int num; void* stm_ofs; void* ofs; scalar_t__ obj; } ;
typedef  TYPE_2__ pdf_xref_entry ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_15__ {int i; } ;
typedef  TYPE_3__ pdf_lexbuf ;
struct TYPE_13__ {TYPE_3__ base; } ;
struct TYPE_16__ {size_t linear_page_num; int /*<<< orphan*/  file; int /*<<< orphan*/ ** linear_page_refs; TYPE_1__ lexbuf; } ;
typedef  TYPE_4__ pdf_document ;
typedef  void* int64_t ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PDF_TOK_ENDOBJ ; 
 int PDF_TOK_EOF ; 
 int PDF_TOK_INT ; 
 int PDF_TOK_OBJ ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void**,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static int
FUNC10(fz_context *ctx, pdf_document *doc, int64_t *offset, int *nump, pdf_obj **page)
{
	pdf_lexbuf *buf = &doc->lexbuf.base;
	int num, gen, tok;
	int64_t numofs, genofs, stmofs, tmpofs, newtmpofs;
	int xref_len;
	pdf_xref_entry *entry;

	numofs = *offset;
	FUNC1(ctx, doc->file, numofs, SEEK_SET);

	/* We expect to read 'num' here */
	tok = FUNC6(ctx, doc->file, buf);
	genofs = FUNC2(ctx, doc->file);
	if (tok != PDF_TOK_INT)
	{
		/* Failed! */
		FUNC0((ctx, "skipping unexpected data (tok=%d) at %d", tok, *offset));
		*offset = genofs;
		return tok == PDF_TOK_EOF;
	}
	*nump = num = buf->i;

	/* We expect to read 'gen' here */
	tok = FUNC6(ctx, doc->file, buf);
	tmpofs = FUNC2(ctx, doc->file);
	if (tok != PDF_TOK_INT)
	{
		/* Failed! */
		FUNC0((ctx, "skipping unexpected data after \"%d\" (tok=%d) at %d", num, tok, *offset));
		*offset = tmpofs;
		return tok == PDF_TOK_EOF;
	}
	gen = buf->i;

	/* We expect to read 'obj' here */
	do
	{
		tmpofs = FUNC2(ctx, doc->file);
		tok = FUNC6(ctx, doc->file, buf);
		if (tok == PDF_TOK_OBJ)
			break;
		if (tok != PDF_TOK_INT)
		{
			FUNC0((ctx, "skipping unexpected data (tok=%d) at %d", tok, tmpofs));
			*offset = FUNC2(ctx, doc->file);
			return tok == PDF_TOK_EOF;
		}
		FUNC0((ctx, "skipping unexpected int %d at %d", num, numofs));
		*nump = num = gen;
		numofs = genofs;
		gen = buf->i;
		genofs = tmpofs;
	}
	while (1);

	/* Now we read the actual object */
	xref_len = FUNC9(ctx, doc);

	/* When we are reading a progressive file, we typically see:
	 *    File Header
	 *    obj m (Linearization params)
	 *    xref #1 (refers to objects m-n)
	 *    obj m+1
	 *    ...
	 *    obj n
	 *    obj 1
	 *    ...
	 *    obj n-1
	 *    xref #2
	 *
	 * The linearisation params are read elsewhere, hence
	 * whenever we read an object it should just go into the
	 * previous xref.
	 */
	tok = FUNC8(ctx, doc, buf, &stmofs, NULL, NULL, NULL, page, &newtmpofs, NULL);

	do /* So we can break out of it */
	{
		if (num <= 0 || num >= xref_len)
		{
			FUNC3(ctx, "Not a valid object number (%d %d obj)", num, gen);
			break;
		}
		if (gen != 0)
		{
			FUNC3(ctx, "Unexpected non zero generation number in linearized file");
		}
		entry = FUNC4(ctx, doc, num);
		if (entry->type != 0)
		{
			FUNC0((ctx, "Duplicate object found (%d %d obj)", num, gen));
			break;
		}
		if (page && *page)
		{
			FUNC0((ctx, "Successfully read object %d @ %d - and found page %d!", num, numofs, doc->linear_page_num));
			if (!entry->obj)
				entry->obj = FUNC5(ctx, *page);

			if (doc->linear_page_refs[doc->linear_page_num] == NULL)
				doc->linear_page_refs[doc->linear_page_num] = FUNC7(ctx, doc, num, gen);
		}
		else
		{
			FUNC0((ctx, "Successfully read object %d @ %d", num, numofs));
		}
		entry->type = 'n';
		entry->gen = gen; // XXX: was 0
		entry->num = num;
		entry->ofs = numofs;
		entry->stm_ofs = stmofs;
	}
	while (0);
	if (page && *page)
		doc->linear_page_num++;

	if (tok == PDF_TOK_ENDOBJ)
	{
		*offset = FUNC2(ctx, doc->file);
	}
	else
	{
		*offset = newtmpofs;
	}
	return 0;
}