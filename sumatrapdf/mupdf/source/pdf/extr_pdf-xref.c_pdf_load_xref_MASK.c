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
struct TYPE_10__ {float type; int gen; scalar_t__ ofs; scalar_t__ num; } ;
typedef  TYPE_1__ pdf_xref_entry ;
typedef  int /*<<< orphan*/  pdf_lexbuf ;
struct TYPE_11__ {scalar_t__ file_size; int /*<<< orphan*/  startxref; } ;
typedef  TYPE_2__ pdf_document ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, pdf_document *doc, pdf_lexbuf *buf)
{
	int i;
	int xref_len;
	pdf_xref_entry *entry;

	FUNC4(ctx, doc);

	FUNC5(ctx, doc, doc->startxref, buf, 1);

	if (FUNC6(ctx, doc) == 0)
		FUNC0(ctx, FZ_ERROR_GENERIC, "found xref was empty");

	FUNC3(ctx, doc);

	entry = FUNC2(ctx, doc, 0);
	/* broken pdfs where first object is missing */
	if (!entry->type)
	{
		entry->type = 'f';
		entry->gen = 65535;
		entry->num = 0;
	}
	/* broken pdfs where first object is not free */
	else if (entry->type != 'f')
		FUNC1(ctx, "first object in xref is not free");

	/* broken pdfs where object offsets are out of range */
	xref_len = FUNC6(ctx, doc);
	for (i = 0; i < xref_len; i++)
	{
		entry = FUNC2(ctx, doc, i);
		if (entry->type == 'n')
		{
			/* Special case code: "0000000000 * n" means free,
			 * according to some producers (inc Quartz) */
			if (entry->ofs == 0)
				entry->type = 'f';
			else if (entry->ofs <= 0 || entry->ofs >= doc->file_size)
				FUNC0(ctx, FZ_ERROR_GENERIC, "object offset out of range: %d (%d 0 R)", (int)entry->ofs, i);
		}
		if (entry->type == 'o')
		{
			/* Read this into a local variable here, because pdf_get_xref_entry
			 * may solidify the xref, hence invalidating "entry", meaning we
			 * need a stashed value for the throw. */
			int64_t ofs = entry->ofs;
			if (ofs <= 0 || ofs >= xref_len || FUNC2(ctx, doc, ofs)->type != 'n')
				FUNC0(ctx, FZ_ERROR_GENERIC, "invalid reference to an objstm that does not exist: %d (%d 0 R)", (int)ofs, i);
		}
	}
}