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
struct outline_parser {scalar_t__ cat; } ;
struct TYPE_3__ {int /*<<< orphan*/  down; int /*<<< orphan*/  flow_head; } ;
typedef  TYPE_1__ fz_html_box ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static const char *
FUNC5(fz_context *ctx, struct outline_parser *x, fz_html_box *box)
{
	if (!x->cat)
		x->cat = FUNC3(ctx, 1024);
	else
		FUNC2(ctx, x->cat);

	FUNC1(ctx, x->cat, box->flow_head);
	FUNC0(ctx, x->cat, box->down);

	return FUNC4(ctx, x->cat);
}