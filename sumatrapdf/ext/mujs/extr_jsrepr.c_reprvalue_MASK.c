#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_13__ {char* tag; } ;
struct TYPE_12__ {char* source; int flags; } ;
struct TYPE_11__ {char* string; } ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {int /*<<< orphan*/  function; } ;
struct TYPE_14__ {TYPE_5__ user; int /*<<< orphan*/  number; TYPE_4__ r; TYPE_3__ s; int /*<<< orphan*/  boolean; TYPE_2__ c; TYPE_1__ f; } ;
struct TYPE_15__ {int type; TYPE_6__ u; } ;
typedef  TYPE_7__ js_Object ;
typedef  int /*<<< orphan*/  js_Buffer ;

/* Variables and functions */
#define  JS_CARRAY 141 
#define  JS_CBOOLEAN 140 
#define  JS_CCFUNCTION 139 
#define  JS_CDATE 138 
#define  JS_CERROR 137 
#define  JS_CFUNCTION 136 
#define  JS_CITERATOR 135 
#define  JS_CJSON 134 
#define  JS_CMATH 133 
#define  JS_CNUMBER 132 
#define  JS_CREGEXP 131 
#define  JS_CSCRIPT 130 
#define  JS_CSTRING 129 
#define  JS_CUSERDATA 128 
 int JS_REGEXP_G ; 
 int JS_REGEXP_I ; 
 int JS_REGEXP_M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 TYPE_7__* FUNC13 (int /*<<< orphan*/ *,int) ; 
 char* FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC20(js_State *J, js_Buffer **sb)
{
	if (FUNC7(J, -1))
		FUNC10(J, sb, "undefined");
	else if (FUNC3(J, -1))
		FUNC10(J, sb, "null");
	else if (FUNC2(J, -1))
		FUNC10(J, sb, FUNC11(J, -1) ? "true" : "false");
	else if (FUNC4(J, -1))
		FUNC17(J, sb, FUNC12(J, -1));
	else if (FUNC6(J, -1))
		FUNC19(J, sb, FUNC14(J, -1));
	else if (FUNC5(J, -1)) {
		js_Object *obj = FUNC13(J, -1);
		switch (obj->type) {
		default:
			FUNC18(J, sb);
			break;
		case JS_CARRAY:
			FUNC15(J, sb);
			break;
		case JS_CFUNCTION:
		case JS_CSCRIPT:
			FUNC16(J, sb, obj->u.f.function);
			break;
		case JS_CCFUNCTION:
			FUNC10(J, sb, "function ");
			FUNC10(J, sb, obj->u.c.name);
			FUNC10(J, sb, "() { [native code] }");
			break;
		case JS_CBOOLEAN:
			FUNC10(J, sb, "(new Boolean(");
			FUNC10(J, sb, obj->u.boolean ? "true" : "false");
			FUNC10(J, sb, "))");
			break;
		case JS_CNUMBER:
			FUNC10(J, sb, "(new Number(");
			FUNC17(J, sb, obj->u.number);
			FUNC10(J, sb, "))");
			break;
		case JS_CSTRING:
			FUNC10(J, sb, "(new String(");
			FUNC19(J, sb, obj->u.s.string);
			FUNC10(J, sb, "))");
			break;
		case JS_CREGEXP:
			FUNC9(J, sb, '/');
			FUNC10(J, sb, obj->u.r.source);
			FUNC9(J, sb, '/');
			if (obj->u.r.flags & JS_REGEXP_G) FUNC9(J, sb, 'g');
			if (obj->u.r.flags & JS_REGEXP_I) FUNC9(J, sb, 'i');
			if (obj->u.r.flags & JS_REGEXP_M) FUNC9(J, sb, 'm');
			break;
		case JS_CDATE:
			FUNC10(J, sb, "(new Date(");
			FUNC0(J, sb, obj->u.number);
			FUNC10(J, sb, "))");
			break;
		case JS_CERROR:
			FUNC10(J, sb, "(new ");
			FUNC1(J, -1, "name");
			FUNC10(J, sb, FUNC14(J, -1));
			FUNC8(J, 1);
			FUNC9(J, sb, '(');
			FUNC1(J, -1, "message");
			FUNC19(J, sb, FUNC14(J, -1));
			FUNC8(J, 1);
			FUNC10(J, sb, "))");
			break;
		case JS_CMATH:
			FUNC10(J, sb, "Math");
			break;
		case JS_CJSON:
			FUNC10(J, sb, "JSON");
			break;
		case JS_CITERATOR:
			FUNC10(J, sb, "[iterator ");
			break;
		case JS_CUSERDATA:
			FUNC10(J, sb, "[userdata ");
			FUNC10(J, sb, obj->u.user.tag);
			FUNC9(J, sb, ']');
			break;
		}
	}
}