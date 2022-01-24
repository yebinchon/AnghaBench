#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  Array_prototype; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  A_isArray ; 
 int /*<<< orphan*/  Ap_concat ; 
 int /*<<< orphan*/  Ap_every ; 
 int /*<<< orphan*/  Ap_filter ; 
 int /*<<< orphan*/  Ap_forEach ; 
 int /*<<< orphan*/  Ap_indexOf ; 
 int /*<<< orphan*/  Ap_join ; 
 int /*<<< orphan*/  Ap_lastIndexOf ; 
 int /*<<< orphan*/  Ap_map ; 
 int /*<<< orphan*/  Ap_pop ; 
 int /*<<< orphan*/  Ap_push ; 
 int /*<<< orphan*/  Ap_reduce ; 
 int /*<<< orphan*/  Ap_reduceRight ; 
 int /*<<< orphan*/  Ap_reverse ; 
 int /*<<< orphan*/  Ap_shift ; 
 int /*<<< orphan*/  Ap_slice ; 
 int /*<<< orphan*/  Ap_some ; 
 int /*<<< orphan*/  Ap_sort ; 
 int /*<<< orphan*/  Ap_splice ; 
 int /*<<< orphan*/  Ap_toString ; 
 int /*<<< orphan*/  Ap_unshift ; 
 int /*<<< orphan*/  JS_DONTENUM ; 
 int /*<<< orphan*/  jsB_new_Array ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC4(js_State *J)
{
	FUNC3(J, J->Array_prototype);
	{
		FUNC0(J, "Array.prototype.toString", Ap_toString, 0);
		FUNC0(J, "Array.prototype.concat", Ap_concat, 0); /* 1 */
		FUNC0(J, "Array.prototype.join", Ap_join, 1);
		FUNC0(J, "Array.prototype.pop", Ap_pop, 0);
		FUNC0(J, "Array.prototype.push", Ap_push, 0); /* 1 */
		FUNC0(J, "Array.prototype.reverse", Ap_reverse, 0);
		FUNC0(J, "Array.prototype.shift", Ap_shift, 0);
		FUNC0(J, "Array.prototype.slice", Ap_slice, 2);
		FUNC0(J, "Array.prototype.sort", Ap_sort, 1);
		FUNC0(J, "Array.prototype.splice", Ap_splice, 0); /* 2 */
		FUNC0(J, "Array.prototype.unshift", Ap_unshift, 0); /* 1 */

		/* ES5 */
		FUNC0(J, "Array.prototype.indexOf", Ap_indexOf, 1);
		FUNC0(J, "Array.prototype.lastIndexOf", Ap_lastIndexOf, 1);
		FUNC0(J, "Array.prototype.every", Ap_every, 1);
		FUNC0(J, "Array.prototype.some", Ap_some, 1);
		FUNC0(J, "Array.prototype.forEach", Ap_forEach, 1);
		FUNC0(J, "Array.prototype.map", Ap_map, 1);
		FUNC0(J, "Array.prototype.filter", Ap_filter, 1);
		FUNC0(J, "Array.prototype.reduce", Ap_reduce, 1);
		FUNC0(J, "Array.prototype.reduceRight", Ap_reduceRight, 1);
	}
	FUNC2(J, jsB_new_Array, jsB_new_Array, "Array", 0); /* 1 */
	{
		/* ES5 */
		FUNC0(J, "Array.isArray", A_isArray, 1);
	}
	FUNC1(J, "Array", JS_DONTENUM);
}