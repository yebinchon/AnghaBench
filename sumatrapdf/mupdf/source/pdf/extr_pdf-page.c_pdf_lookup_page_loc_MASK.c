#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pages ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

pdf_obj *
FUNC5(fz_context *ctx, pdf_document *doc, int needle, pdf_obj **parentp, int *indexp)
{
	pdf_obj *root = FUNC2(ctx, FUNC4(ctx, doc), FUNC0(Root));
	pdf_obj *node = FUNC2(ctx, root, FUNC0(Pages));
	int skip = needle;
	pdf_obj *hit;

	if (!node)
		FUNC1(ctx, FZ_ERROR_GENERIC, "cannot find page tree");

	hit = FUNC3(ctx, doc, node, &skip, parentp, indexp);
	if (!hit)
		FUNC1(ctx, FZ_ERROR_GENERIC, "cannot find page %d in page tree", needle+1);
	return hit;
}