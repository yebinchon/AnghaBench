#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* down; int /*<<< orphan*/  page; void* uri; void* title; } ;
typedef  TYPE_1__ fz_outline ;
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {int /*<<< orphan*/  page; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 TYPE_3__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static fz_outline *
FUNC10(fz_context *ctx, xps_document *doc, fz_xml *root)
{
	fz_xml *node;
	fz_outline *head = NULL, *entry, *tail;
	int last_level = 1, this_level;
	for (node = FUNC5(root); node; node = FUNC7(node))
	{
		if (FUNC6(node, "OutlineEntry"))
		{
			char *level = FUNC4(node, "OutlineLevel");
			char *target = FUNC4(node, "OutlineTarget");
			char *description = FUNC4(node, "Description");
			if (!target || !description)
				continue;

			entry = FUNC2(ctx);
			entry->title = FUNC0(FUNC3(ctx, description), "outline_title");
			entry->uri = FUNC0(FUNC3(ctx, target), "outline_uri");
			entry->page = FUNC9(ctx, (fz_document*)doc, target, NULL, NULL).page;
			entry->down = NULL;
			entry->next = NULL;

			this_level = level ? FUNC1(level) : 1;

			if (!head)
			{
				head = entry;
			}
			else
			{
				tail = FUNC8(ctx, doc, head, 1, this_level);
				if (this_level > last_level)
					tail->down = entry;
				else
					tail->next = entry;
			}

			last_level = this_level;
		}
	}
	return head;
}