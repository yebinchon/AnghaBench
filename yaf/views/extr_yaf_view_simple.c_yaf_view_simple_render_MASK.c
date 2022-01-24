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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_array ;
typedef  int /*<<< orphan*/  yaf_view_t ;
struct TYPE_3__ {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SLASH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  YAF_ERR_NOTFOUND_VIEW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  YAF_VIEW_PROPERTY_NAME_TPLDIR ; 
 int /*<<< orphan*/  YAF_VIEW_PROPERTY_NAME_TPLVARS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  view_directory ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* yaf_view_simple_ce ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(yaf_view_t *view, zval *tpl, zval *vars, zval *ret) {
	zval *tpl_vars;
	zend_array *symbol_table;

	if (IS_STRING != FUNC7(tpl)) {
		return 0;
	}

	tpl_vars = FUNC13(yaf_view_simple_ce, view, FUNC2(YAF_VIEW_PROPERTY_NAME_TPLVARS), 1, NULL);

	symbol_table = FUNC10(tpl_vars, vars);

	if (FUNC0(FUNC5(tpl), FUNC4(tpl))) {
		if (FUNC12(view, symbol_table, FUNC6(tpl), ret) == 0) {
			FUNC11(symbol_table);
			return 0;
		}
	} else {
		zend_string *script;
		zval *tpl_dir = FUNC13(yaf_view_simple_ce, view, FUNC2(YAF_VIEW_PROPERTY_NAME_TPLDIR), 0, NULL);

		if (IS_STRING != FUNC7(tpl_dir)) {
			if (FUNC1(view_directory)) {
				script = FUNC8(0, "%s%c%s", FUNC3(FUNC1(view_directory)), DEFAULT_SLASH, FUNC5(tpl));
			} else {
				FUNC11(symbol_table);
				FUNC9(YAF_ERR_NOTFOUND_VIEW,
						"Could not determine the view script path, you should call %s::setScriptPath to specific it",
						FUNC3(yaf_view_simple_ce->name));
				return 0;
			}
		} else {
			script = FUNC8(0, "%s%c%s", FUNC5(tpl_dir), DEFAULT_SLASH, FUNC5(tpl));
		}

		if (FUNC12(view, symbol_table, script, ret) == 0) {
			FUNC11(symbol_table);
			FUNC14(script);
			return 0;
		}
		FUNC14(script);
	}

	FUNC11(symbol_table);

	return 1;
}