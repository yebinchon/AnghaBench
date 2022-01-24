#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_Value ;
struct TYPE_36__ {scalar_t__ strict; } ;
typedef  TYPE_6__ js_State ;
struct TYPE_37__ {int atts; int /*<<< orphan*/  value; scalar_t__ getter; TYPE_8__* setter; } ;
typedef  TYPE_7__ js_Property ;
struct TYPE_34__ {int /*<<< orphan*/  data; scalar_t__ (* put ) (TYPE_6__*,int /*<<< orphan*/ ,char const*) ;} ;
struct TYPE_33__ {int /*<<< orphan*/  last; } ;
struct TYPE_32__ {int length; } ;
struct TYPE_31__ {int length; } ;
struct TYPE_35__ {TYPE_4__ user; TYPE_3__ r; TYPE_2__ s; TYPE_1__ a; } ;
struct TYPE_38__ {scalar_t__ type; TYPE_5__ u; } ;
typedef  TYPE_8__ js_Object ;

/* Variables and functions */
 scalar_t__ JS_CARRAY ; 
 scalar_t__ JS_CREGEXP ; 
 scalar_t__ JS_CSTRING ; 
 scalar_t__ JS_CUSERDATA ; 
 int JS_READONLY ; 
 TYPE_7__* FUNC0 (TYPE_6__*,TYPE_8__*,char const*,int*) ; 
 int FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_8__*,int) ; 
 TYPE_7__* FUNC3 (TYPE_6__*,TYPE_8__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 double FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 scalar_t__ FUNC7 (TYPE_6__*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 scalar_t__ FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC16(js_State *J, js_Object *obj, const char *name)
{
	js_Value *value = FUNC13(J, -1);
	js_Property *ref;
	int k;
	int own;

	if (obj->type == JS_CARRAY) {
		if (!FUNC14(name, "length")) {
			double rawlen = FUNC5(J, value);
			int newlen = FUNC1(rawlen);
			if (newlen != rawlen || newlen < 0)
				FUNC11(J, "invalid array length");
			FUNC2(J, obj, newlen);
			return;
		}
		if (FUNC7(J, name, &k))
			if (k >= obj->u.a.length)
				obj->u.a.length = k + 1;
	}

	else if (obj->type == JS_CSTRING) {
		if (!FUNC14(name, "length"))
			goto readonly;
		if (FUNC7(J, name, &k))
			if (k >= 0 && k < obj->u.s.length)
				goto readonly;
	}

	else if (obj->type == JS_CREGEXP) {
		if (!FUNC14(name, "source")) goto readonly;
		if (!FUNC14(name, "global")) goto readonly;
		if (!FUNC14(name, "ignoreCase")) goto readonly;
		if (!FUNC14(name, "multiline")) goto readonly;
		if (!FUNC14(name, "lastIndex")) {
			obj->u.r.last = FUNC4(J, value);
			return;
		}
	}

	else if (obj->type == JS_CUSERDATA) {
		if (obj->u.user.put && obj->u.user.put(J, obj->u.user.data, name))
			return;
	}

	/* First try to find a setter in prototype chain */
	ref = FUNC0(J, obj, name, &own);
	if (ref) {
		if (ref->setter) {
			FUNC9(J, ref->setter);
			FUNC9(J, obj);
			FUNC10(J, *value);
			FUNC6(J, 1);
			FUNC8(J, 1);
			return;
		} else {
			if (J->strict)
				if (ref->getter)
					FUNC12(J, "setting property '%s' that only has a getter", name);
		}
	}

	/* Property not found on this object, so create one */
	if (!ref || !own)
		ref = FUNC3(J, obj, name);

	if (ref) {
		if (!(ref->atts & JS_READONLY))
			ref->value = *value;
		else
			goto readonly;
	}

	return;

readonly:
	if (J->strict)
		FUNC12(J, "'%s' is read-only", name);
}