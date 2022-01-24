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
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_5__ {scalar_t__ rev_page_map; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(fz_context *ctx, pdf_document *doc, pdf_obj *page)
{
	if (doc->rev_page_map)
		return FUNC0(ctx, doc, FUNC2(ctx, page));
	else
		return FUNC1(ctx, doc, page);
}