#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * object; TYPE_1__* memstr; int /*<<< orphan*/  litstr; int /*<<< orphan*/  number; int /*<<< orphan*/  boolean; int /*<<< orphan*/  shrstr; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef  TYPE_3__ js_Value ;
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  js_Object ;
struct TYPE_5__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
#define  JS_TBOOLEAN 135 
#define  JS_TLITSTR 134 
#define  JS_TMEMSTR 133 
#define  JS_TNULL 132 
#define  JS_TNUMBER 131 
#define  JS_TOBJECT 130 
#define  JS_TSHRSTR 129 
#define  JS_TUNDEFINED 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

js_Object *FUNC4(js_State *J, js_Value *v)
{
	switch (v->type) {
	default:
	case JS_TSHRSTR: return FUNC2(J, v->u.shrstr);
	case JS_TUNDEFINED: FUNC3(J, "cannot convert undefined to object");
	case JS_TNULL: FUNC3(J, "cannot convert null to object");
	case JS_TBOOLEAN: return FUNC0(J, v->u.boolean);
	case JS_TNUMBER: return FUNC1(J, v->u.number);
	case JS_TLITSTR: return FUNC2(J, v->u.litstr);
	case JS_TMEMSTR: return FUNC2(J, v->u.memstr->p);
	case JS_TOBJECT: return v->u.object;
	}
}