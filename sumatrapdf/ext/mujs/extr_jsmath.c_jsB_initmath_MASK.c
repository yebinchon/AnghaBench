#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  Object_prototype; int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  JS_CMATH ; 
 int /*<<< orphan*/  JS_DONTENUM ; 
 int /*<<< orphan*/  Math_abs ; 
 int /*<<< orphan*/  Math_acos ; 
 int /*<<< orphan*/  Math_asin ; 
 int /*<<< orphan*/  Math_atan ; 
 int /*<<< orphan*/  Math_atan2 ; 
 int /*<<< orphan*/  Math_ceil ; 
 int /*<<< orphan*/  Math_cos ; 
 int /*<<< orphan*/  Math_exp ; 
 int /*<<< orphan*/  Math_floor ; 
 int /*<<< orphan*/  Math_log ; 
 int /*<<< orphan*/  Math_max ; 
 int /*<<< orphan*/  Math_min ; 
 int /*<<< orphan*/  Math_pow ; 
 int /*<<< orphan*/  Math_random ; 
 int /*<<< orphan*/  Math_round ; 
 int /*<<< orphan*/  Math_sin ; 
 int /*<<< orphan*/  Math_sqrt ; 
 int /*<<< orphan*/  Math_tan ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(js_State *J)
{
	J->seed = FUNC5(NULL);

	FUNC4(J, FUNC2(J, JS_CMATH, J->Object_prototype));
	{
		FUNC1(J, "E", 2.7182818284590452354);
		FUNC1(J, "LN10", 2.302585092994046);
		FUNC1(J, "LN2", 0.6931471805599453);
		FUNC1(J, "LOG2E", 1.4426950408889634);
		FUNC1(J, "LOG10E", 0.4342944819032518);
		FUNC1(J, "PI", 3.1415926535897932);
		FUNC1(J, "SQRT1_2", 0.7071067811865476);
		FUNC1(J, "SQRT2", 1.4142135623730951);

		FUNC0(J, "Math.abs", Math_abs, 1);
		FUNC0(J, "Math.acos", Math_acos, 1);
		FUNC0(J, "Math.asin", Math_asin, 1);
		FUNC0(J, "Math.atan", Math_atan, 1);
		FUNC0(J, "Math.atan2", Math_atan2, 2);
		FUNC0(J, "Math.ceil", Math_ceil, 1);
		FUNC0(J, "Math.cos", Math_cos, 1);
		FUNC0(J, "Math.exp", Math_exp, 1);
		FUNC0(J, "Math.floor", Math_floor, 1);
		FUNC0(J, "Math.log", Math_log, 1);
		FUNC0(J, "Math.max", Math_max, 0); /* 2 */
		FUNC0(J, "Math.min", Math_min, 0); /* 2 */
		FUNC0(J, "Math.pow", Math_pow, 2);
		FUNC0(J, "Math.random", Math_random, 0);
		FUNC0(J, "Math.round", Math_round, 1);
		FUNC0(J, "Math.sin", Math_sin, 1);
		FUNC0(J, "Math.sqrt", Math_sqrt, 1);
		FUNC0(J, "Math.tan", Math_tan, 1);
	}
	FUNC3(J, "Math", JS_DONTENUM);
}