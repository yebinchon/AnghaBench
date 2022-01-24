#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int num; int ofs; int gen; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ pdf_xref_entry ;
typedef  scalar_t__ pdf_token ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_14__ {char* scratch; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ pdf_lexbuf ;
struct TYPE_15__ {int has_old_style_xrefs; int /*<<< orphan*/ * file; } ;
typedef  TYPE_3__ pdf_document ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int PDF_MAX_OBJECT_NUMBER ; 
 scalar_t__ PDF_TOK_OPEN_DICT ; 
 scalar_t__ PDF_TOK_TRAILER ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (char) ; 
 scalar_t__ FUNC12 (char) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC17 (char*) ; 

__attribute__((used)) static pdf_obj *
FUNC18(fz_context *ctx, pdf_document *doc, pdf_lexbuf *buf)
{
	int start, len, c, i, xref_len, carried;
	fz_stream *file = doc->file;
	pdf_xref_entry *table;
	pdf_token tok;
	size_t n;
	char *s, *e;

	xref_len = FUNC16(ctx, doc, buf);

	FUNC5(ctx, doc->file);
	if (FUNC6(ctx, doc->file, "xref"))
		FUNC8(ctx, FZ_ERROR_GENERIC, "cannot find xref marker");
	FUNC5(ctx, doc->file);

	while (1)
	{
		c = FUNC1(ctx, file);
		if (!FUNC11(c))
			break;

		FUNC3(ctx, file, buf->scratch, buf->size);
		s = buf->scratch;
		start = FUNC0(FUNC7(&s, " "));
		len = FUNC0(FUNC7(&s, " "));

		/* broken pdfs where the section is not on a separate line */
		if (s && *s != '\0')
		{
			FUNC10(ctx, "broken xref subsection. proceeding anyway.");
			FUNC4(ctx, file, -(2 + (int)FUNC17(s)), SEEK_CUR);
		}

		if (start < 0 || start > PDF_MAX_OBJECT_NUMBER
				|| len < 0 || len > PDF_MAX_OBJECT_NUMBER
				|| start + len - 1 > PDF_MAX_OBJECT_NUMBER)
		{
			FUNC8(ctx, FZ_ERROR_GENERIC, "xref subsection object numbers are out of range");
		}
		/* broken pdfs where size in trailer undershoots entries in xref sections */
		if (start + len > xref_len)
		{
			FUNC10(ctx, "broken xref subsection, proceeding anyway.");
		}

		table = FUNC15(ctx, doc, start, len);

		/* Xref entries SHOULD be 20 bytes long, but we see 19 byte
		 * ones more frequently than we'd like (e.g. PCLm drivers).
		 * Cope with this by 'carrying' data forward. */
		carried = 0;
		for (i = 0; i < len; i++)
		{
			pdf_xref_entry *entry = &table[i];
			n = FUNC2(ctx, file, (unsigned char *) buf->scratch + carried, 20-carried);
			if (n != (size_t)(20-carried))
				FUNC8(ctx, FZ_ERROR_GENERIC, "unexpected EOF in xref table");
			n += carried;
			buf->scratch[n] = '\0';
			if (!entry->type)
			{
				s = buf->scratch;
				e = s + n;

				entry->num = start + i;

				/* broken pdfs where line start with white space */
				while (s < e && FUNC12(*s))
					s++;

				if (s == e || !FUNC11(*s))
					FUNC8(ctx, FZ_ERROR_GENERIC, "xref offset missing");
				while (s < e && FUNC11(*s))
					entry->ofs = entry->ofs * 10 + *s++ - '0';

				while (s < e && FUNC12(*s))
					s++;
				if (s == e || !FUNC11(*s))
					FUNC8(ctx, FZ_ERROR_GENERIC, "xref generation number missing");
				while (s < e && FUNC11(*s))
					entry->gen = entry->gen * 10 + *s++ - '0';

				while (s < e && FUNC12(*s))
					s++;
				if (s == e || (*s != 'f' && *s != 'n' && *s != 'o'))
					FUNC8(ctx, FZ_ERROR_GENERIC, "unexpected xref type: 0x%x (%d %d R)", s == e ? 0 : *s, entry->num, entry->gen);
				entry->type = *s++;

				/* If the last byte of our buffer isn't an EOL (or space), carry one byte forward */
				carried = buf->scratch[19] > 32;
				if (carried)
					buf->scratch[0] = buf->scratch[19];
			}
		}
		if (carried)
			FUNC9(ctx, file);
	}

	tok = FUNC13(ctx, file, buf);
	if (tok != PDF_TOK_TRAILER)
		FUNC8(ctx, FZ_ERROR_GENERIC, "expected trailer marker");

	tok = FUNC13(ctx, file, buf);
	if (tok != PDF_TOK_OPEN_DICT)
		FUNC8(ctx, FZ_ERROR_GENERIC, "expected trailer dictionary");

	doc->has_old_style_xrefs = 1;

	return FUNC14(ctx, doc, file, buf);
}