#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* doc; int /*<<< orphan*/  obj; int /*<<< orphan*/  widgets; int /*<<< orphan*/  annots; int /*<<< orphan*/  links; } ;
typedef  TYPE_2__ pdf_page ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_page *page)
{
	FUNC1(ctx, page->links);
	FUNC2(ctx, page->annots);
	FUNC4(ctx, page->widgets);

	FUNC3(ctx, page->obj);

	FUNC0(ctx, &page->doc->super);
}