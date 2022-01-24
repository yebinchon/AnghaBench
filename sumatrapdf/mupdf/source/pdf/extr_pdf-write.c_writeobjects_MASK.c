#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int start; scalar_t__ hintstream_len; scalar_t__* ofs_list; int /*<<< orphan*/  out; scalar_t__ main_xref_offset; scalar_t__ do_linear; scalar_t__ first_xref_offset; int /*<<< orphan*/  do_incremental; } ;
typedef  TYPE_1__ pdf_write_state ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, int pass)
{
	int num;
	int xref_len = FUNC6(ctx, doc);

	if (!opts->do_incremental)
	{
		int version = FUNC5(ctx, doc);
		FUNC2(ctx, opts->out, "%%PDF-%d.%d\n", version / 10, version % 10);
		FUNC3(ctx, opts->out, "%\xC2\xB5\xC2\xB6\n\n");
	}

	FUNC0(ctx, doc, opts, opts->start, pass);

	if (opts->do_linear)
	{
		/* Write first xref */
		if (pass == 0)
			opts->first_xref_offset = FUNC1(ctx, opts->out);
		else
			FUNC4(ctx, opts->out, opts->first_xref_offset);
		FUNC7(ctx, doc, opts, opts->start, FUNC6(ctx, doc), 1, opts->main_xref_offset, 0);
	}

	for (num = opts->start+1; num < xref_len; num++)
		FUNC0(ctx, doc, opts, num, pass);
	if (opts->do_linear && pass == 1)
	{
		int64_t offset = (opts->start == 1 ? opts->main_xref_offset : opts->ofs_list[1] + opts->hintstream_len);
		FUNC4(ctx, opts->out, offset);
	}
	for (num = 1; num < opts->start; num++)
	{
		if (pass == 1)
			opts->ofs_list[num] += opts->hintstream_len;
		FUNC0(ctx, doc, opts, num, pass);
	}
}