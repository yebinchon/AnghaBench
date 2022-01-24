#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_6__ {int /*<<< orphan*/  string; } ;
struct TYPE_7__ {int /*<<< orphan*/  boolean; TYPE_1__ s; int /*<<< orphan*/  number; } ;
struct TYPE_8__ {int type; TYPE_2__ u; } ;
typedef  TYPE_3__ js_Object ;
typedef  int /*<<< orphan*/  js_Buffer ;

/* Variables and functions */
#define  JS_CARRAY 131 
#define  JS_CBOOLEAN 130 
#define  JS_CNUMBER 129 
#define  JS_CSTRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_3__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC22(js_State *J, js_Buffer **sb, const char *key, const char *gap, int level)
{
	/* replacer is in 2 */
	/* holder is in -1 */

	FUNC6(J, -1, key);

	if (FUNC12(J, -1)) {
		if (FUNC7(J, -1, "toJSON")) {
			if (FUNC9(J, -1)) {
				FUNC5(J, -2);
				FUNC15(J, key);
				FUNC4(J, 1);
				FUNC17(J);
			} else {
				FUNC14(J, 1);
			}
		}
	}

	if (FUNC9(J, 2)) {
		FUNC5(J, 2); /* replacer function */
		FUNC5(J, -3); /* holder as this */
		FUNC15(J, key); /* name */
		FUNC5(J, -4); /* old value */
		FUNC4(J, 2);
		FUNC17(J); /* pop old value, leave new value on stack */
	}

	if (FUNC12(J, -1) && !FUNC9(J, -1)) {
		js_Object *obj = FUNC20(J, -1);
		switch (obj->type) {
		case JS_CNUMBER: FUNC1(J, sb, obj->u.number); break;
		case JS_CSTRING: FUNC3(J, sb, obj->u.s.string); break;
		case JS_CBOOLEAN: FUNC16(J, sb, obj->u.boolean ? "true" : "false"); break;
		case JS_CARRAY: FUNC0(J, sb, gap, level); break;
		default: FUNC2(J, sb, obj, gap, level); break;
		}
	}
	else if (FUNC8(J, -1))
		FUNC16(J, sb, FUNC18(J, -1) ? "true" : "false");
	else if (FUNC11(J, -1))
		FUNC1(J, sb, FUNC19(J, -1));
	else if (FUNC13(J, -1))
		FUNC3(J, sb, FUNC21(J, -1));
	else if (FUNC10(J, -1))
		FUNC16(J, sb, "null");
	else {
		FUNC14(J, 1);
		return 0;
	}

	FUNC14(J, 1);
	return 1;
}