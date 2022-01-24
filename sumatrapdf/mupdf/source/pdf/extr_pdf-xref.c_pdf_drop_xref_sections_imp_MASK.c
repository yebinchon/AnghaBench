#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int len; TYPE_5__* signer; scalar_t__ field; struct TYPE_8__* next; struct TYPE_8__* unsaved_sigs; scalar_t__ trailer; scalar_t__ pre_repair_trailer; struct TYPE_8__* table; int /*<<< orphan*/  stm_buf; scalar_t__ obj; struct TYPE_8__* subsec; } ;
typedef  TYPE_1__ pdf_xref_subsec ;
typedef  TYPE_1__ pdf_xref_entry ;
typedef  TYPE_1__ pdf_xref ;
typedef  TYPE_1__ pdf_unsaved_sig ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_9__ {int /*<<< orphan*/  (* drop ) (TYPE_5__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC4(fz_context *ctx, pdf_document *doc, pdf_xref *xref_sections, int num_xref_sections)
{
	pdf_unsaved_sig *usig;
	int x, e;

	for (x = 0; x < num_xref_sections; x++)
	{
		pdf_xref *xref = &xref_sections[x];
		pdf_xref_subsec *sub = xref->subsec;

		while (sub != NULL)
		{
			pdf_xref_subsec *next_sub = sub->next;
			for (e = 0; e < sub->len; e++)
			{
				pdf_xref_entry *entry = &sub->table[e];
				if (entry->obj)
				{
					FUNC2(ctx, entry->obj);
					FUNC0(ctx, entry->stm_buf);
				}
			}
			FUNC1(ctx, sub->table);
			FUNC1(ctx, sub);
			sub = next_sub;
		}

		FUNC2(ctx, xref->pre_repair_trailer);
		FUNC2(ctx, xref->trailer);

		while ((usig = xref->unsaved_sigs) != NULL)
		{
			xref->unsaved_sigs = usig->next;
			FUNC2(ctx, usig->field);
			usig->signer->drop(usig->signer);
			FUNC1(ctx, usig);
		}
	}

	FUNC1(ctx, xref_sections);
}