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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  YAF_ERR_TYPE_ERROR ; 
 int /*<<< orphan*/  YAF_VIEW_PROPERTY_NAME_OPTS ; 
 int /*<<< orphan*/  YAF_VIEW_PROPERTY_NAME_TPLDIR ; 
 int /*<<< orphan*/  YAF_VIEW_PROPERTY_NAME_TPLVARS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  yaf_view_simple_ce ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

yaf_view_t *FUNC11(yaf_view_t *this_ptr, zval *tpl_dir, zval *options) /* {{{ */ {
	zval tpl_vars;

	if (FUNC2(this_ptr)) {
		FUNC7(this_ptr, yaf_view_simple_ce);
	}

	FUNC6(&tpl_vars);
	FUNC9(yaf_view_simple_ce, this_ptr, FUNC1(YAF_VIEW_PROPERTY_NAME_TPLVARS), &tpl_vars);
	FUNC10(&tpl_vars);

	if (tpl_dir && FUNC5(tpl_dir) == IS_STRING) {
		if (FUNC0(FUNC4(tpl_dir), FUNC3(tpl_dir))) {
			FUNC9(yaf_view_simple_ce, this_ptr, FUNC1(YAF_VIEW_PROPERTY_NAME_TPLDIR), tpl_dir);
		} else {
			/* redo the object_init_ex? zval_ptr_dtor(this_ptr); */
			FUNC8(YAF_ERR_TYPE_ERROR, "Expects an absolute path for templates directory");
			return NULL;
		}
	} 

	if (options && IS_ARRAY == FUNC5(options)) {
		FUNC9(yaf_view_simple_ce, this_ptr, FUNC1(YAF_VIEW_PROPERTY_NAME_OPTS), options);
	}

	return this_ptr;
}