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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_bool ;
typedef  int /*<<< orphan*/  yaf_route_t ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 

yaf_route_t * FUNC12(yaf_route_t *this_ptr, zval *config) {
	zval *match, *def, *map, *verify, *reverse, *pzval;
	yaf_route_t *instance = NULL;

	if (!config || IS_ARRAY != FUNC3(config)) {
		return NULL;
	}

	if ((pzval = FUNC9(FUNC1(config), FUNC0("type"))) == NULL ||
		IS_STRING != FUNC3(pzval)) {
		return NULL;
	}

	if (FUNC11(FUNC2(pzval), "rewrite")) {
		if ((match = FUNC9(FUNC1(config), FUNC0("match"))) == NULL ||
			FUNC3(match) != IS_STRING) {
			return NULL;
		}
		if ((def = FUNC9(FUNC1(config), FUNC0("route"))) == NULL ||
			FUNC3(def) != IS_ARRAY) {
			return NULL;
		}

		if ((verify = FUNC9(FUNC1(config), FUNC0("route"))) == NULL ||
			FUNC3(verify) != IS_ARRAY) {
			verify = NULL;
		}

        instance = FUNC6(this_ptr, match, def, verify);
	} else if (FUNC11(FUNC2(pzval), "regex")) {
		if ((match = FUNC9(FUNC1(config), FUNC0("match"))) == NULL ||
			FUNC3(match) != IS_STRING) {
			return NULL;
		}
		if ((def = FUNC9(FUNC1(config), FUNC0("route"))) == NULL ||
			FUNC3(def) != IS_ARRAY) {
			return NULL;
		}
		if ((map = FUNC9(FUNC1(config), FUNC0("map"))) == NULL ||
			FUNC3(map) != IS_ARRAY) {
			map = NULL;
		}

		if ((verify = FUNC9(FUNC1(config), FUNC0("route"))) == NULL ||
			FUNC3(verify) != IS_ARRAY) {
			verify = NULL;
		}

		if ((reverse = FUNC9(FUNC1(config), FUNC0("route"))) == NULL ||
			FUNC3(reverse) != IS_STRING) {
			reverse = NULL;
		}

		instance = FUNC5(this_ptr, match, def, map, verify, reverse);
	} else if (FUNC11(FUNC2(pzval), "map")) {
		zend_string *delimiter = NULL;
		zend_bool controller_prefer = 0;
		
		if ((pzval = FUNC9(FUNC1(config), FUNC0("controllerPrefer"))) != NULL) {
			controller_prefer = FUNC10(pzval);
		}

		if ((pzval = FUNC9(FUNC1(config), FUNC0("delimiter"))) != NULL
			&& FUNC3(pzval) == IS_STRING) {
			delimiter = FUNC2(pzval);
		}

		instance = FUNC4(this_ptr, controller_prefer, delimiter);
	} else if (FUNC11(FUNC2(pzval), "simple")) {
		if ((match = FUNC9(FUNC1(config), FUNC0("module"))) == NULL ||
			FUNC3(match) != IS_STRING) {
			return NULL;
		}
		if ((def = FUNC9(FUNC1(config), FUNC0("controller"))) == NULL ||
			FUNC3(def) != IS_STRING) {
			return NULL;
		}
		if ((map = FUNC9(FUNC1(config), FUNC0("action"))) == NULL ||
			FUNC3(map) != IS_STRING) {
			return NULL;
		}

		instance = FUNC7(this_ptr, match, def, map);
	} else if (FUNC11(FUNC2(pzval), "supervar")) {
		if ((match = FUNC9(FUNC1(config), FUNC0("varname"))) == NULL ||
			FUNC3(match) != IS_STRING) {
			return NULL;
		}

		instance = FUNC8(this_ptr, match);
	}

	return instance;
}