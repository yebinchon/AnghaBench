#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char type; int /*<<< orphan*/  ofs; } ;
typedef  TYPE_2__ pdf_xref_entry ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_9__ {int /*<<< orphan*/  base; } ;
struct TYPE_11__ {TYPE_1__ lexbuf; int /*<<< orphan*/  file; } ;
typedef  TYPE_3__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 

pdf_obj *
FUNC5(fz_context *ctx, pdf_document *doc, int num)
{
	pdf_xref_entry *x;

	if (num <= 0 || num >= FUNC4(ctx, doc))
		FUNC1(ctx, FZ_ERROR_GENERIC, "object out of range (%d 0 R); xref size %d", num, FUNC4(ctx, doc));

	x = FUNC2(ctx, doc, num);
	if (x->type == 'n')
	{
		FUNC0(ctx, doc->file, x->ofs, SEEK_SET);
		return FUNC3(ctx, doc, doc->file, &doc->lexbuf.base, NULL, NULL, NULL, NULL);
	}
	return NULL;
}