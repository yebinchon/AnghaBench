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
struct TYPE_3__ {int /*<<< orphan*/  stm_buf; } ;
typedef  TYPE_1__ pdf_xref_entry ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  DecodeParms ; 
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/  Length ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC12(fz_context *ctx, pdf_document *doc, pdf_obj *obj, fz_buffer *newbuf, int compressed)
{
	int num;
	pdf_xref_entry *x;

	if (FUNC8(ctx, obj))
		num = FUNC10(ctx, obj);
	else
		num = FUNC9(ctx, obj);
	if (num <= 0 || num >= FUNC11(ctx, doc))
	{
		FUNC4(ctx, "object out of range (%d 0 R); xref size %d", num, FUNC11(ctx, doc));
		return;
	}

	x = FUNC7(ctx, doc, num);

	FUNC2(ctx, x->stm_buf);
	x->stm_buf = FUNC3(ctx, newbuf);

	FUNC6(ctx, obj, FUNC0(Length), (int)FUNC1(ctx, newbuf, NULL));
	if (!compressed)
	{
		FUNC5(ctx, obj, FUNC0(Filter));
		FUNC5(ctx, obj, FUNC0(DecodeParms));
	}
}