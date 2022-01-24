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
struct TYPE_3__ {char type; int /*<<< orphan*/  obj; scalar_t__ ofs; } ;
typedef  TYPE_1__ pdf_xref_entry ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC7(fz_context *ctx, pdf_document *doc, int num, pdf_obj *newobj)
{
	pdf_xref_entry *x;

	if (num <= 0 || num >= FUNC6(ctx, doc))
	{
		FUNC0(ctx, "object out of range (%d 0 R); xref size %d", num, FUNC6(ctx, doc));
		return;
	}

	if (!newobj)
	{
		FUNC1(ctx, doc, num);
		return;
	}

	x = FUNC3(ctx, doc, num);

	FUNC2(ctx, x->obj);

	x->type = 'n';
	x->ofs = 0;
	x->obj = FUNC4(ctx, newobj);

	FUNC5(ctx, newobj, num);
}