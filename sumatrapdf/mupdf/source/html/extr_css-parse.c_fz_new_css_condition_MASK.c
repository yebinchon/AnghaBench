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
struct TYPE_4__ {int type; int /*<<< orphan*/ * next; int /*<<< orphan*/ * val; int /*<<< orphan*/ * key; } ;
typedef  TYPE_1__ fz_css_condition ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static fz_css_condition *FUNC2(fz_context *ctx, fz_pool *pool, int type, const char *key, const char *val)
{
	fz_css_condition *cond = FUNC0(ctx, pool, sizeof *cond);
	cond->type = type;
	cond->key = key ? FUNC1(ctx, pool, key) : NULL;
	cond->val = val ? FUNC1(ctx, pool, val) : NULL;
	cond->next = NULL;
	return cond;
}