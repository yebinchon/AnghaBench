#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {int /*<<< orphan*/  scope; } ;
typedef  TYPE_1__ zend_op_array ;
typedef  int /*<<< orphan*/  zend_function ;
struct TYPE_11__ {int /*<<< orphan*/ * symbol_table; } ;
typedef  TYPE_2__ zend_execute_data ;
typedef  int /*<<< orphan*/  zend_array ;
typedef  int /*<<< orphan*/  yaf_view_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  PHP_OUTPUT_HANDLER_STDFLAGS ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int ZEND_CALL_HAS_SYMBOL_TABLE ; 
 int ZEND_CALL_NESTED_CODE ; 
 int /*<<< orphan*/  ZEND_CALL_TOP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 TYPE_2__* FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(yaf_view_t *view, zend_op_array *op_array, zend_array *symbol_table, zval* ret) /* {{{ */ {
	zend_execute_data *call;
	zval result;

	FUNC3(&result);

	op_array->scope = FUNC4(view);

	call = FUNC14(ZEND_CALL_NESTED_CODE
#if PHP_VERSION_ID >= 70100
		    | ZEND_CALL_HAS_SYMBOL_TABLE
#endif
			,
			(zend_function*)op_array, 0, op_array->scope, FUNC5(view));

	call->symbol_table = symbol_table;

	if (ret && FUNC10(NULL, 0, PHP_OUTPUT_HANDLER_STDFLAGS) == FAILURE) {
		FUNC6("ref.outcontrol", E_WARNING, "failed to create buffer");
		return 0;
	}

	FUNC12(call, op_array, &result);

	FUNC2(call, ZEND_CALL_TOP);
	FUNC11(call);
	FUNC13(call);

	FUNC15(&result);

	if (FUNC1(FUNC0(exception) != NULL)) {
		if (ret) {
			FUNC7();
		}
		return 0;
	}

	if (ret) {
		if (FUNC9(ret) == FAILURE) {
			FUNC8();
			FUNC6(NULL, E_WARNING, "Unable to fetch ob content");
			return 0;
		}

		if (FUNC7() != SUCCESS ) {
			return 0;
		}
	}

	return 1;
}