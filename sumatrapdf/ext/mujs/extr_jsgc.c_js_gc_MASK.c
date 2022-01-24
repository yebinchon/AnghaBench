#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int gcmark; struct TYPE_19__* gcnext; } ;
typedef  TYPE_1__ js_String ;
struct TYPE_20__ {int gcmark; int envtop; TYPE_1__* gcstr; TYPE_3__* gcobj; TYPE_4__* gcfun; TYPE_5__* gcenv; int /*<<< orphan*/ * envstack; int /*<<< orphan*/  GE; int /*<<< orphan*/  E; int /*<<< orphan*/  G; int /*<<< orphan*/  R; int /*<<< orphan*/  URIError_prototype; int /*<<< orphan*/  TypeError_prototype; int /*<<< orphan*/  SyntaxError_prototype; int /*<<< orphan*/  ReferenceError_prototype; int /*<<< orphan*/  RangeError_prototype; int /*<<< orphan*/  EvalError_prototype; int /*<<< orphan*/  Error_prototype; int /*<<< orphan*/  Date_prototype; int /*<<< orphan*/  RegExp_prototype; int /*<<< orphan*/  String_prototype; int /*<<< orphan*/  Number_prototype; int /*<<< orphan*/  Boolean_prototype; int /*<<< orphan*/  Function_prototype; int /*<<< orphan*/  Array_prototype; int /*<<< orphan*/  Object_prototype; scalar_t__ gccounter; scalar_t__ gcpause; } ;
typedef  TYPE_2__ js_State ;
struct TYPE_21__ {int gcmark; struct TYPE_21__* gcnext; } ;
typedef  TYPE_3__ js_Object ;
struct TYPE_22__ {int gcmark; struct TYPE_22__* gcnext; } ;
typedef  TYPE_4__ js_Function ;
struct TYPE_23__ {int gcmark; struct TYPE_23__* gcnext; } ;
typedef  TYPE_5__ js_Environment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,int,int,int,int,int,int,int) ; 

void FUNC9(js_State *J, int report)
{
	js_Function *fun, *nextfun, **prevnextfun;
	js_Object *obj, *nextobj, **prevnextobj;
	js_String *str, *nextstr, **prevnextstr;
	js_Environment *env, *nextenv, **prevnextenv;
	int nenv = 0, nfun = 0, nobj = 0, nstr = 0;
	int genv = 0, gfun = 0, gobj = 0, gstr = 0;
	int mark;
	int i;

	if (J->gcpause) {
		if (report)
			FUNC7(J, "garbage collector is paused");
		return;
	}

	J->gccounter = 0;

	mark = J->gcmark = J->gcmark == 1 ? 2 : 1;

	FUNC4(J, mark, J->Object_prototype);
	FUNC4(J, mark, J->Array_prototype);
	FUNC4(J, mark, J->Function_prototype);
	FUNC4(J, mark, J->Boolean_prototype);
	FUNC4(J, mark, J->Number_prototype);
	FUNC4(J, mark, J->String_prototype);
	FUNC4(J, mark, J->RegExp_prototype);
	FUNC4(J, mark, J->Date_prototype);

	FUNC4(J, mark, J->Error_prototype);
	FUNC4(J, mark, J->EvalError_prototype);
	FUNC4(J, mark, J->RangeError_prototype);
	FUNC4(J, mark, J->ReferenceError_prototype);
	FUNC4(J, mark, J->SyntaxError_prototype);
	FUNC4(J, mark, J->TypeError_prototype);
	FUNC4(J, mark, J->URIError_prototype);

	FUNC4(J, mark, J->R);
	FUNC4(J, mark, J->G);

	FUNC5(J, mark);

	FUNC3(J, mark, J->E);
	FUNC3(J, mark, J->GE);
	for (i = 0; i < J->envtop; ++i)
		FUNC3(J, mark, J->envstack[i]);

	prevnextenv = &J->gcenv;
	for (env = J->gcenv; env; env = nextenv) {
		nextenv = env->gcnext;
		if (env->gcmark != mark) {
			*prevnextenv = nextenv;
			FUNC0(J, env);
			++genv;
		} else {
			prevnextenv = &env->gcnext;
		}
		++nenv;
	}

	prevnextfun = &J->gcfun;
	for (fun = J->gcfun; fun; fun = nextfun) {
		nextfun = fun->gcnext;
		if (fun->gcmark != mark) {
			*prevnextfun = nextfun;
			FUNC1(J, fun);
			++gfun;
		} else {
			prevnextfun = &fun->gcnext;
		}
		++nfun;
	}

	prevnextobj = &J->gcobj;
	for (obj = J->gcobj; obj; obj = nextobj) {
		nextobj = obj->gcnext;
		if (obj->gcmark != mark) {
			*prevnextobj = nextobj;
			FUNC2(J, obj);
			++gobj;
		} else {
			prevnextobj = &obj->gcnext;
		}
		++nobj;
	}

	prevnextstr = &J->gcstr;
	for (str = J->gcstr; str; str = nextstr) {
		nextstr = str->gcnext;
		if (str->gcmark != mark) {
			*prevnextstr = nextstr;
			FUNC6(J, str);
			++gstr;
		} else {
			prevnextstr = &str->gcnext;
		}
		++nstr;
	}

	if (report) {
		char buf[256];
		FUNC8(buf, sizeof buf, "garbage collected: %d/%d envs, %d/%d funs, %d/%d objs, %d/%d strs",
			genv, nenv, gfun, nfun, gobj, nobj, gstr, nstr);
		FUNC7(J, buf);
	}
}