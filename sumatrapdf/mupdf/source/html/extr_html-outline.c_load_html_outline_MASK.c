#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct outline_parser {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* down; scalar_t__ heading; } ;
typedef  TYPE_1__ fz_html_box ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct outline_parser*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, struct outline_parser *x, fz_html_box *box)
{
	while (box)
	{
		if (box->heading)
			FUNC0(ctx, x, box);
		if (box->down)
			FUNC1(ctx, x, box->down);
		box = box->next;
	}
}