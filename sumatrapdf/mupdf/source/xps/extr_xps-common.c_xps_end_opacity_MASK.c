#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xps_resource ;
struct TYPE_3__ {scalar_t__ opacity_top; int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void
FUNC2(fz_context *ctx, xps_document *doc, char *base_uri, xps_resource *dict,
	char *opacity_att, fz_xml *opacity_mask_tag)
{
	fz_device *dev = doc->dev;

	if (!opacity_att && !opacity_mask_tag)
		return;

	if (doc->opacity_top > 0)
		doc->opacity_top--;

	if (opacity_mask_tag)
	{
		if (!FUNC1(opacity_mask_tag, "SolidColorBrush"))
			FUNC0(ctx, dev);
	}
}