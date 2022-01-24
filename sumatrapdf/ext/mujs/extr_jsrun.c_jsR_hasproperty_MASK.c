#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_17__ {int /*<<< orphan*/  value; TYPE_7__* getter; } ;
typedef  TYPE_6__ js_Property ;
struct TYPE_15__ {int /*<<< orphan*/  data; scalar_t__ (* has ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ;} ;
struct TYPE_14__ {int flags; int last; int /*<<< orphan*/  source; } ;
struct TYPE_13__ {int length; int /*<<< orphan*/  string; } ;
struct TYPE_12__ {int length; } ;
struct TYPE_16__ {TYPE_4__ user; TYPE_3__ r; TYPE_2__ s; TYPE_1__ a; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_5__ u; } ;
typedef  TYPE_7__ js_Object ;

/* Variables and functions */
 scalar_t__ JS_CARRAY ; 
 scalar_t__ JS_CREGEXP ; 
 scalar_t__ JS_CSTRING ; 
 scalar_t__ JS_CUSERDATA ; 
 int JS_REGEXP_G ; 
 int JS_REGEXP_I ; 
 int JS_REGEXP_M ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *,TYPE_7__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC12(js_State *J, js_Object *obj, const char *name)
{
	js_Property *ref;
	int k;

	if (obj->type == JS_CARRAY) {
		if (!FUNC10(name, "length")) {
			FUNC5(J, obj->u.a.length);
			return 1;
		}
	}

	else if (obj->type == JS_CSTRING) {
		if (!FUNC10(name, "length")) {
			FUNC5(J, obj->u.s.length);
			return 1;
		}
		if (FUNC2(J, name, &k)) {
			if (k >= 0 && k < obj->u.s.length) {
				FUNC7(J, FUNC9(J, obj->u.s.string, k));
				return 1;
			}
		}
	}

	else if (obj->type == JS_CREGEXP) {
		if (!FUNC10(name, "source")) {
			FUNC4(J, obj->u.r.source);
			return 1;
		}
		if (!FUNC10(name, "global")) {
			FUNC3(J, obj->u.r.flags & JS_REGEXP_G);
			return 1;
		}
		if (!FUNC10(name, "ignoreCase")) {
			FUNC3(J, obj->u.r.flags & JS_REGEXP_I);
			return 1;
		}
		if (!FUNC10(name, "multiline")) {
			FUNC3(J, obj->u.r.flags & JS_REGEXP_M);
			return 1;
		}
		if (!FUNC10(name, "lastIndex")) {
			FUNC5(J, obj->u.r.last);
			return 1;
		}
	}

	else if (obj->type == JS_CUSERDATA) {
		if (obj->u.user.has && obj->u.user.has(J, obj->u.user.data, name))
			return 1;
	}

	ref = FUNC0(J, obj, name);
	if (ref) {
		if (ref->getter) {
			FUNC6(J, ref->getter);
			FUNC6(J, obj);
			FUNC1(J, 0);
		} else {
			FUNC8(J, ref->value);
		}
		return 1;
	}

	return 0;
}