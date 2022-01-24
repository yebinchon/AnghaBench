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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  yaf_view_t ;
typedef  int /*<<< orphan*/  copy_ctor_func_t ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  YAF_VIEW_PROPERTY_NAME_TPLVARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yaf_view_simple_ce ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ zval_add_ref ; 

int FUNC5(yaf_view_t *view, zval *value) /* {{{ */ {
	zval *tpl_vars = FUNC4(yaf_view_simple_ce, view, FUNC0(YAF_VIEW_PROPERTY_NAME_TPLVARS), 1, NULL);
	if (FUNC2(value) == IS_ARRAY) {
		FUNC3(FUNC1(tpl_vars), FUNC1(value), (copy_ctor_func_t) zval_add_ref);
		return 1;
	}
	return 0;
}