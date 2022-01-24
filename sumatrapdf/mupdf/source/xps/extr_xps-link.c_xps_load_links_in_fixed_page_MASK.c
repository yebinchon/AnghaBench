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
typedef  int /*<<< orphan*/  xps_resource ;
struct TYPE_5__ {TYPE_1__* fix; int /*<<< orphan*/  xml; } ;
typedef  TYPE_2__ xps_page ;
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_link ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(fz_context *ctx, xps_document *doc, fz_matrix ctm, xps_page *page, fz_link **link)
{
	fz_xml *root, *node, *resource_tag;
	xps_resource *dict = NULL;
	char base_uri[1024];
	char *s;

	root = FUNC4(page->xml);

	if (!root)
		return;

	FUNC0(base_uri, page->fix->name, sizeof base_uri);
	s = FUNC5(base_uri, '/');
	if (s)
		s[1] = 0;

	resource_tag = FUNC1(FUNC2(root, "FixedPage.Resources"));
	if (resource_tag)
		dict = FUNC8(ctx, doc, base_uri, resource_tag);

	for (node = FUNC1(root); node; node = FUNC3(node))
		FUNC7(ctx, doc, ctm, base_uri, dict, node, link);

	if (dict)
		FUNC6(ctx, doc, dict);
}