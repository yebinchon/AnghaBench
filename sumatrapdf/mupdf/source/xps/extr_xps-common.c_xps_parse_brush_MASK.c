#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xps_resource ;
struct TYPE_9__ {TYPE_1__* cookie; } ;
typedef  TYPE_2__ xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {scalar_t__ abort; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area, char *base_uri, xps_resource *dict, fz_xml *node)
{
	if (doc->cookie && doc->cookie->abort)
		return;
	/* SolidColorBrushes are handled in a special case and will never show up here */
	if (FUNC1(node, "ImageBrush"))
		FUNC2(ctx, doc, ctm, area, base_uri, dict, node);
	else if (FUNC1(node, "VisualBrush"))
		FUNC5(ctx, doc, ctm, area, base_uri, dict, node);
	else if (FUNC1(node, "LinearGradientBrush"))
		FUNC3(ctx, doc, ctm, area, base_uri, dict, node);
	else if (FUNC1(node, "RadialGradientBrush"))
		FUNC4(ctx, doc, ctm, area, base_uri, dict, node);
	else
		FUNC0(ctx, "unknown brush tag");
}