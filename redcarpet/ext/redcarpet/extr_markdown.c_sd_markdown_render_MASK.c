#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* doc_footer ) (struct buf*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* doc_header ) (struct buf*,int /*<<< orphan*/ ) ;} ;
struct sd_markdown {int ext_flags; TYPE_2__* work_bufs; int /*<<< orphan*/  footnotes_used; int /*<<< orphan*/  footnotes_found; int /*<<< orphan*/  refs; int /*<<< orphan*/  opaque; TYPE_1__ cb; } ;
struct buf {int size; char* data; } ;
struct TYPE_4__ {scalar_t__ size; } ;

/* Variables and functions */
 size_t BUFFER_BLOCK ; 
 size_t BUFFER_SPAN ; 
 size_t FUNC0 (int) ; 
 int MKDEXT_FENCED_CODE ; 
 int MKDEXT_FOOTNOTES ; 
 int REF_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,size_t) ; 
 struct buf* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct buf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,size_t,size_t,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,size_t,size_t,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct buf*,struct sd_markdown*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct buf*,struct sd_markdown*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct buf*,int /*<<< orphan*/ ) ; 

void
FUNC19(struct buf *ob, const uint8_t *document, size_t doc_size, struct sd_markdown *md)
{
#define MARKDOWN_GROW(x) ((x) + ((x) >> 1))
	static const char UTF8_BOM[] = {0xEF, 0xBB, 0xBF};

	struct buf *text;
	size_t beg, end;
	int in_fence = 0;

	text = FUNC4(64);
	if (!text)
		return;

	/* Preallocate enough space for our buffer to avoid expanding while copying */
	FUNC3(text, doc_size);

	/* reset the references table */
	FUNC14(&md->refs, 0x0, REF_TABLE_SIZE * sizeof(void *));

	int footnotes_enabled  = md->ext_flags & MKDEXT_FOOTNOTES;
	int codefences_enabled = md->ext_flags & MKDEXT_FENCED_CODE;

	/* reset the footnotes lists */
	if (footnotes_enabled) {
		FUNC14(&md->footnotes_found, 0x0, sizeof(md->footnotes_found));
		FUNC14(&md->footnotes_used, 0x0, sizeof(md->footnotes_used));
	}

	/* first pass: looking for references, copying everything else */
	beg = 0;

	/* Skip a possible UTF-8 BOM, even though the Unicode standard
	 * discourages having these in UTF-8 documents */
	if (doc_size >= 3 && FUNC13(document, UTF8_BOM, 3) == 0)
		beg += 3;

	while (beg < doc_size) { /* iterating over lines */
		if (codefences_enabled && (FUNC10(document + beg, doc_size - beg, NULL) != 0))
			in_fence = !in_fence;

		if (!in_fence && footnotes_enabled && FUNC11(document, beg, doc_size, &end, &md->footnotes_found))
			beg = end;
		else if (!in_fence && FUNC12(document, beg, doc_size, &end, md->refs))
			beg = end;
		else { /* skipping to the next line */
			end = beg;
			while (end < doc_size && document[end] != '\n' && document[end] != '\r')
				end++;

			/* adding the line body if present */
			if (end > beg)
				FUNC7(text, document + beg, end - beg);

			while (end < doc_size && (document[end] == '\n' || document[end] == '\r')) {
				/* add one \n per newline */
				if (document[end] == '\n' || (end + 1 < doc_size && document[end + 1] != '\n'))
					FUNC5(text, '\n');
				end++;
			}

			beg = end;
		}
	}

	/* pre-grow the output buffer to minimize allocations */
	FUNC3(ob, MARKDOWN_GROW(text->size));

	/* second pass: actual rendering */
	if (md->cb.doc_header)
		md->cb.doc_header(ob, md->opaque);

	if (text->size) {
		/* adding a final newline if not already present */
		if (text->data[text->size - 1] != '\n' && text->data[text->size - 1] != '\r')
			FUNC5(text, '\n');

		FUNC15(ob, md, text->data, text->size);
	}

	/* footnotes */
	if (footnotes_enabled)
		FUNC16(ob, md, &md->footnotes_used);

	if (md->cb.doc_footer)
		md->cb.doc_footer(ob, md->opaque);

	/* Null-terminate the buffer */
	FUNC2(ob);

	/* clean-up */
	FUNC6(text);
	FUNC9(md->refs);
	if (footnotes_enabled) {
		FUNC8(&md->footnotes_found, 1);
		FUNC8(&md->footnotes_used, 0);
	}

	FUNC1(md->work_bufs[BUFFER_SPAN].size == 0);
	FUNC1(md->work_bufs[BUFFER_BLOCK].size == 0);
}