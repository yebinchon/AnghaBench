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
struct TYPE_7__ {double boolean; double number; TYPE_1__* memstr; int /*<<< orphan*/  litstr; int /*<<< orphan*/  shrstr; } ;
struct TYPE_8__ {int type; TYPE_2__ u; } ;
typedef  TYPE_3__ js_Value ;
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_6__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  JS_HNUMBER ; 
#define  JS_TBOOLEAN 135 
#define  JS_TLITSTR 134 
#define  JS_TMEMSTR 133 
#define  JS_TNULL 132 
#define  JS_TNUMBER 131 
#define  JS_TOBJECT 130 
#define  JS_TSHRSTR 129 
#define  JS_TUNDEFINED 128 
 double NAN ; 
 double FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 

double FUNC2(js_State *J, js_Value *v)
{
	switch (v->type) {
	default:
	case JS_TSHRSTR: return FUNC0(J, v->u.shrstr);
	case JS_TUNDEFINED: return NAN;
	case JS_TNULL: return 0;
	case JS_TBOOLEAN: return v->u.boolean;
	case JS_TNUMBER: return v->u.number;
	case JS_TLITSTR: return FUNC0(J, v->u.litstr);
	case JS_TMEMSTR: return FUNC0(J, v->u.memstr->p);
	case JS_TOBJECT:
		FUNC1(J, v, JS_HNUMBER);
		return FUNC2(J, v);
	}
}