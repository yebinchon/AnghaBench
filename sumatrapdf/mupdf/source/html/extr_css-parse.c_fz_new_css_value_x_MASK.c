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
typedef  int /*<<< orphan*/  fz_pool ;
struct TYPE_4__ {int type; int /*<<< orphan*/ * next; int /*<<< orphan*/ * args; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ fz_css_value ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static fz_css_value *FUNC1(fz_context *ctx, fz_pool *pool, int type)
{
	fz_css_value *val = FUNC0(ctx, pool, sizeof *val);
	val->type = type;
	val->data = NULL;
	val->args = NULL;
	val->next = NULL;
	return val;
}