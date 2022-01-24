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
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_link ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(fz_context *ctx, xps_document *doc, fz_matrix ctm,
		char *base_uri, xps_resource *dict, fz_xml *root, fz_link **link)
{
	char *navigate_uri_att = FUNC2(root, "FixedPage.NavigateUri");
	if (navigate_uri_att)
	{
		char *transform_att = FUNC2(root, "RenderTransform");
		fz_xml *transform_tag = FUNC3(FUNC4(root, "Path.RenderTransform"));

		char *data_att = FUNC2(root, "Data");
		fz_xml *data_tag = FUNC3(FUNC4(root, "Path.Data"));

		fz_path *path = NULL;
		int fill_rule;
		fz_rect area;

		FUNC9(ctx, doc, dict, &data_att, &data_tag, NULL);
		FUNC9(ctx, doc, dict, &transform_att, &transform_tag, NULL);

		ctm = FUNC8(ctx, doc, transform_att, transform_tag, ctm);

		if (data_att)
			path = FUNC6(ctx, doc, data_att, &fill_rule);
		else if (data_tag)
			path = FUNC7(ctx, doc, dict, data_tag, 0, &fill_rule);
		if (path)
		{
			area = FUNC0(ctx, path, NULL, ctm);
			FUNC1(ctx, path);
			FUNC5(ctx, doc, area, base_uri, navigate_uri_att, link);
		}
	}
}