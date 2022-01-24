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
struct TYPE_3__ {int /*<<< orphan*/  doc; } ;
typedef  TYPE_1__ xps_page ;
typedef  int /*<<< orphan*/  fz_page ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_link ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 

fz_link *
FUNC2(fz_context *ctx, fz_page *page_)
{
	xps_page *page = (xps_page*)page_;
	fz_matrix ctm;
	fz_link *link = NULL;
	ctm = FUNC0(72.0f / 96.0f, 72.0f / 96.0f);
	FUNC1(ctx, page->doc, ctm, page, &link);
	return link;
}