#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* first_block; } ;
typedef  TYPE_1__ fz_stext_page ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef  TYPE_2__ fz_stext_block ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FZ_STEXT_BLOCK_IMAGE ; 
 scalar_t__ FZ_STEXT_BLOCK_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

void
FUNC4(fz_context *ctx, fz_output *out, fz_stext_page *page, int id)
{
	fz_stext_block *block;

	FUNC2(ctx, out, "<div id=\"page%d\">\n", id);

	for (block = page->first_block; block; block = block->next)
	{
		if (block->type == FZ_STEXT_BLOCK_IMAGE)
			FUNC1(ctx, out, block);
		else if (block->type == FZ_STEXT_BLOCK_TEXT)
			FUNC0(ctx, out, block);
	}

	FUNC3(ctx, out, "</div>\n");
}