#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  obj; TYPE_4__** annot_tailp; TYPE_4__* annots; } ;
typedef  TYPE_2__ pdf_page ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_10__ {int dirty; } ;
typedef  TYPE_3__ pdf_document ;
struct TYPE_11__ {int /*<<< orphan*/  obj; struct TYPE_11__* next; TYPE_1__* page; } ;
typedef  TYPE_4__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {TYPE_3__* doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  Annots ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 

void
FUNC5(fz_context *ctx, pdf_page *page, pdf_annot *annot)
{
	pdf_document *doc = annot->page->doc;
	pdf_annot **annotptr;
	pdf_obj *annot_arr;
	int i;

	if (annot == NULL)
		return;

	/* Remove annot from page's list */
	for (annotptr = &page->annots; *annotptr; annotptr = &(*annotptr)->next)
	{
		if (*annotptr == annot)
			break;
	}

	/* Check the passed annotation was of this page */
	if (*annotptr == NULL)
		return;

	*annotptr = annot->next;

	/* If the removed annotation was the last in the list adjust the end pointer */
	if (*annotptr == NULL)
		page->annot_tailp = annotptr;

	/* Remove the annot from the "Annots" array. */
	annot_arr = FUNC3(ctx, page->obj, FUNC0(Annots));
	i = FUNC2(ctx, annot_arr, annot->obj);
	if (i >= 0)
		FUNC1(ctx, annot_arr, i);

	/* The garbage collection pass when saving will remove the annot object,
	 * removing it here may break files if multiple pages use the same annot. */

	/* And free it. */
	FUNC4(ctx, annot);

	doc->dirty = 1;
}