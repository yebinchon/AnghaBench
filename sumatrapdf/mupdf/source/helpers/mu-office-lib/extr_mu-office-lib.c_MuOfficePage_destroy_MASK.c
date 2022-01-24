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
struct TYPE_7__ {int /*<<< orphan*/  ctx; TYPE_1__* pages; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; int /*<<< orphan*/  page; struct TYPE_6__* next; TYPE_2__* doc; } ;
typedef  TYPE_1__ MuOfficePage ;
typedef  TYPE_2__ MuOfficeDoc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC4(MuOfficePage *page)
{
	MuOfficeDoc *doc;
	MuOfficePage **ptr;

	if (!page)
		return;

	/* Unlink page from doc */
	doc = page->doc;
	ptr = &doc->pages;
	while (*ptr && *ptr != page)
		ptr = &(*ptr)->next;
	FUNC0(*ptr);
	*ptr = page->next;

	FUNC2(doc->ctx, page->page);
	FUNC1(doc->ctx, page->list);
	FUNC3(doc->ctx, page);
}