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
typedef  int /*<<< orphan*/  xps_resource ;
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_link ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, xps_document *doc, fz_matrix ctm, char *base_uri, xps_resource *dict, fz_xml *node, fz_link **link)
{
	if (FUNC0(node, "Path"))
		FUNC3(ctx, doc, ctm, base_uri, dict, node, link);
	else if (FUNC0(node, "Glyphs"))
		FUNC2(ctx, doc, ctm, base_uri, dict, node, link);
	else if (FUNC0(node, "Canvas"))
		FUNC1(ctx, doc, ctm, base_uri, dict, node, link);
	else if (FUNC0(node, "AlternateContent"))
	{
		node = FUNC4(ctx, doc, node);
		if (node)
			FUNC5(ctx, doc, ctm, base_uri, dict, node, link);
	}
}