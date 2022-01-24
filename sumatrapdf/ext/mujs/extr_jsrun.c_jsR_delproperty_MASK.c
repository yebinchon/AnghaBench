#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ strict; } ;
typedef  TYPE_4__ js_State ;
struct TYPE_21__ {int atts; } ;
typedef  TYPE_5__ js_Property ;
struct TYPE_18__ {int /*<<< orphan*/  data; scalar_t__ (* delete ) (TYPE_4__*,int /*<<< orphan*/ ,char const*) ;} ;
struct TYPE_17__ {int length; } ;
struct TYPE_19__ {TYPE_2__ user; TYPE_1__ s; } ;
struct TYPE_22__ {scalar_t__ type; TYPE_3__ u; } ;
typedef  TYPE_6__ js_Object ;

/* Variables and functions */
 scalar_t__ JS_CARRAY ; 
 scalar_t__ JS_CREGEXP ; 
 scalar_t__ JS_CSTRING ; 
 scalar_t__ JS_CUSERDATA ; 
 int JS_DONTCONF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_6__*,char const*) ; 
 TYPE_5__* FUNC1 (TYPE_4__*,TYPE_6__*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6(js_State *J, js_Object *obj, const char *name)
{
	js_Property *ref;
	int k;

	if (obj->type == JS_CARRAY) {
		if (!FUNC4(name, "length"))
			goto dontconf;
	}

	else if (obj->type == JS_CSTRING) {
		if (!FUNC4(name, "length"))
			goto dontconf;
		if (FUNC2(J, name, &k))
			if (k >= 0 && k < obj->u.s.length)
				goto dontconf;
	}

	else if (obj->type == JS_CREGEXP) {
		if (!FUNC4(name, "source")) goto dontconf;
		if (!FUNC4(name, "global")) goto dontconf;
		if (!FUNC4(name, "ignoreCase")) goto dontconf;
		if (!FUNC4(name, "multiline")) goto dontconf;
		if (!FUNC4(name, "lastIndex")) goto dontconf;
	}

	else if (obj->type == JS_CUSERDATA) {
		if (obj->u.user.delete && obj->u.user.delete(J, obj->u.user.data, name))
			return 1;
	}

	ref = FUNC1(J, obj, name);
	if (ref) {
		if (ref->atts & JS_DONTCONF)
			goto dontconf;
		FUNC0(J, obj, name);
	}
	return 1;

dontconf:
	if (J->strict)
		FUNC3(J, "'%s' is non-configurable", name);
	return 0;
}