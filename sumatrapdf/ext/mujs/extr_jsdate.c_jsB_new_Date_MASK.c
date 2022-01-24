#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  Date_prototype; } ;
typedef  TYPE_2__ js_State ;
struct TYPE_15__ {double number; } ;
struct TYPE_17__ {TYPE_1__ u; } ;
typedef  TYPE_3__ js_Object ;

/* Variables and functions */
 int /*<<< orphan*/  JS_CDATE ; 
 int /*<<< orphan*/  JS_HNONE ; 
 double FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (double,double,double,double) ; 
 double FUNC3 () ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int) ; 
 double FUNC9 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*) ; 
 double FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 double FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(js_State *J)
{
	int top = FUNC7(J);
	js_Object *obj;
	double t;

	if (top == 1)
		t = FUNC3();
	else if (top == 2) {
		FUNC12(J, 1, JS_HNONE);
		if (FUNC8(J, 1))
			t = FUNC14(FUNC13(J, 1));
		else
			t = FUNC4(FUNC11(J, 1));
	} else {
		double y, m, d, H, M, S, ms;
		y = FUNC11(J, 1);
		if (y < 100) y += 1900;
		m = FUNC11(J, 2);
		d = FUNC9(J, 3, 1);
		H = FUNC9(J, 4, 0);
		M = FUNC9(J, 5, 0);
		S = FUNC9(J, 6, 0);
		ms = FUNC9(J, 7, 0);
		t = FUNC0(FUNC1(y, m, d), FUNC2(H, M, S, ms));
		t = FUNC4(FUNC5(t));
	}

	obj = FUNC6(J, JS_CDATE, J->Date_prototype);
	obj->u.number = t;

	FUNC10(J, obj);
}