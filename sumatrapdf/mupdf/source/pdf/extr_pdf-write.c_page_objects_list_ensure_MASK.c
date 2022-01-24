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
struct TYPE_5__ {int cap; int /*<<< orphan*/ * page; } ;
typedef  TYPE_1__ page_objects_list ;
typedef  int /*<<< orphan*/  page_objects ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, page_objects_list **pol, int newcap)
{
	int oldcap = (*pol)->cap;
	if (newcap <= oldcap)
		return;
	*pol = FUNC0(ctx, *pol, sizeof(page_objects_list) + (newcap-1)*sizeof(page_objects *));
	FUNC1(&(*pol)->page[oldcap], 0, (newcap-oldcap)*sizeof(page_objects *));
	(*pol)->cap = newcap;
}