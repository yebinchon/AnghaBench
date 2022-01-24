#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* parent; } ;
typedef  TYPE_1__ xps_resource ;
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_link ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(fz_context *ctx, xps_document *doc, fz_matrix ctm,
		char *base_uri, xps_resource *dict, fz_xml *root, fz_link **link)
{
	xps_resource *new_dict = NULL;
	fz_xml *node;

	char *navigate_uri_att = FUNC1(root, "FixedPage.NavigateUri");
	char *transform_att = FUNC1(root, "RenderTransform");
	fz_xml *transform_tag = FUNC2(FUNC3(root, "Canvas.RenderTransform"));
	fz_xml *resource_tag = FUNC2(FUNC3(root, "Canvas.Resources"));

	if (resource_tag)
	{
		new_dict = FUNC7(ctx, doc, base_uri, resource_tag);
		if (new_dict)
		{
			new_dict->parent = dict;
			dict = new_dict;
		}
	}

	FUNC9(ctx, doc, dict, &transform_att, &transform_tag, NULL);

	ctm = FUNC8(ctx, doc, transform_att, transform_tag, ctm);

	if (navigate_uri_att)
		FUNC0(ctx, "FixedPage.NavigateUri attribute on Canvas element");

	for (node = FUNC2(root); node; node = FUNC4(node))
		FUNC6(ctx, doc, ctm, base_uri, dict, node, link);

	if (new_dict)
		FUNC5(ctx, doc, new_dict);
}