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
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_5__ {char* tag; } ;
struct TYPE_6__ {TYPE_1__ user; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef  TYPE_3__ js_Object ;

/* Variables and functions */
#define  JS_CARGUMENTS 143 
#define  JS_CARRAY 142 
#define  JS_CBOOLEAN 141 
#define  JS_CCFUNCTION 140 
#define  JS_CDATE 139 
#define  JS_CERROR 138 
#define  JS_CFUNCTION 137 
#define  JS_CITERATOR 136 
#define  JS_CJSON 135 
#define  JS_CMATH 134 
#define  JS_CNUMBER 133 
#define  JS_COBJECT 132 
#define  JS_CREGEXP 131 
#define  JS_CSCRIPT 130 
#define  JS_CSTRING 129 
#define  JS_CUSERDATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(js_State *J)
{
	if (FUNC2(J, 0))
		FUNC3(J, "[object Undefined]");
	else if (FUNC1(J, 0))
		FUNC3(J, "[object Null]");
	else {
		js_Object *self = FUNC4(J, 0);
		switch (self->type) {
		case JS_COBJECT: FUNC3(J, "[object Object]"); break;
		case JS_CARRAY: FUNC3(J, "[object Array]"); break;
		case JS_CFUNCTION: FUNC3(J, "[object Function]"); break;
		case JS_CSCRIPT: FUNC3(J, "[object Function]"); break;
		case JS_CCFUNCTION: FUNC3(J, "[object Function]"); break;
		case JS_CERROR: FUNC3(J, "[object Error]"); break;
		case JS_CBOOLEAN: FUNC3(J, "[object Boolean]"); break;
		case JS_CNUMBER: FUNC3(J, "[object Number]"); break;
		case JS_CSTRING: FUNC3(J, "[object String]"); break;
		case JS_CREGEXP: FUNC3(J, "[object RegExp]"); break;
		case JS_CDATE: FUNC3(J, "[object Date]"); break;
		case JS_CMATH: FUNC3(J, "[object Math]"); break;
		case JS_CJSON: FUNC3(J, "[object JSON]"); break;
		case JS_CARGUMENTS: FUNC3(J, "[object Arguments]"); break;
		case JS_CITERATOR: FUNC3(J, "[Iterator]"); break;
		case JS_CUSERDATA:
			FUNC3(J, "[object ");
			FUNC3(J, self->u.user.tag);
			FUNC0(J);
			FUNC3(J, "]");
			FUNC0(J);
			break;
		}
	}
}