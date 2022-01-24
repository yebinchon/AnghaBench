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
struct TYPE_4__ {TYPE_2__* doc; } ;
typedef  TYPE_1__ svg_page ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ svg_document ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_page ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_rect
FUNC2(fz_context *ctx, fz_page *page_)
{
	svg_page *page = (svg_page*)page_;
	svg_document *doc = page->doc;

	FUNC1(ctx, doc, doc->root);

	return FUNC0(0, 0, doc->width, doc->height);
}