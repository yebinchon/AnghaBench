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
typedef  char zend_op_array ;
typedef  int /*<<< orphan*/  zend_array ;
typedef  int /*<<< orphan*/  yaf_view_t ;

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  YAF_VIEW_PROPERTY_NAME_TPLVARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yaf_view_simple_ce ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(yaf_view_t *view, zval *tpl, zval * vars, zval *ret) {
	zval *tpl_vars;
	zend_array *symbol_table;

	if (IS_STRING != FUNC4(tpl)) {
		return 0;
	}

	tpl_vars = FUNC13(yaf_view_simple_ce, view, FUNC0(YAF_VIEW_PROPERTY_NAME_TPLVARS), 1, NULL);

	symbol_table = FUNC8(tpl_vars, vars);

	if (FUNC2(tpl)) {
		zval phtml;
		zend_op_array *op_array;
		char *eval_desc = FUNC12("template code");
		
		/* eval require code mustn't be wrapped in opening and closing PHP tags */
		FUNC1(&phtml, FUNC7(0, "?>%s", FUNC3(tpl)));

		op_array = FUNC11(&phtml, eval_desc);

		FUNC14(&phtml);
		FUNC6(eval_desc);

		if (op_array) {
			(void)FUNC10(view, op_array, symbol_table, ret);
			FUNC5(op_array);
			FUNC6(op_array);
		}
	}

	FUNC9(symbol_table);

	return 1;
}