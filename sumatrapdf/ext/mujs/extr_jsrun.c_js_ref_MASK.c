#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ object; int /*<<< orphan*/  boolean; } ;
struct TYPE_10__ {int type; TYPE_1__ u; } ;
typedef  TYPE_2__ js_Value ;
struct TYPE_11__ {int /*<<< orphan*/  nextref; } ;
typedef  TYPE_3__ js_State ;

/* Variables and functions */
#define  JS_TBOOLEAN 131 
#define  JS_TNULL 130 
#define  JS_TOBJECT 129 
#define  JS_TUNDEFINED 128 
 char* FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,void*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int) ; 

const char *FUNC4(js_State *J)
{
	js_Value *v = FUNC3(J, -1);
	const char *s;
	char buf[32];
	switch (v->type) {
	case JS_TUNDEFINED: s = "_Undefined"; break;
	case JS_TNULL: s = "_Null"; break;
	case JS_TBOOLEAN:
		s = v->u.boolean ? "_True" : "_False";
		break;
	case JS_TOBJECT:
		FUNC2(buf, "%p", (void*)v->u.object);
		s = FUNC0(J, buf);
		break;
	default:
		FUNC2(buf, "%d", J->nextref++);
		s = FUNC0(J, buf);
		break;
	}
	FUNC1(J, s);
	return s;
}