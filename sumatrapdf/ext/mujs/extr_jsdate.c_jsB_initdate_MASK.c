#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* Date_prototype; } ;
typedef  TYPE_2__ js_State ;
struct TYPE_9__ {scalar_t__ number; } ;
struct TYPE_11__ {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_UTC ; 
 int /*<<< orphan*/  D_now ; 
 int /*<<< orphan*/  D_parse ; 
 int /*<<< orphan*/  Dp_getDate ; 
 int /*<<< orphan*/  Dp_getDay ; 
 int /*<<< orphan*/  Dp_getFullYear ; 
 int /*<<< orphan*/  Dp_getHours ; 
 int /*<<< orphan*/  Dp_getMilliseconds ; 
 int /*<<< orphan*/  Dp_getMinutes ; 
 int /*<<< orphan*/  Dp_getMonth ; 
 int /*<<< orphan*/  Dp_getSeconds ; 
 int /*<<< orphan*/  Dp_getTimezoneOffset ; 
 int /*<<< orphan*/  Dp_getUTCDate ; 
 int /*<<< orphan*/  Dp_getUTCDay ; 
 int /*<<< orphan*/  Dp_getUTCFullYear ; 
 int /*<<< orphan*/  Dp_getUTCHours ; 
 int /*<<< orphan*/  Dp_getUTCMilliseconds ; 
 int /*<<< orphan*/  Dp_getUTCMinutes ; 
 int /*<<< orphan*/  Dp_getUTCMonth ; 
 int /*<<< orphan*/  Dp_getUTCSeconds ; 
 int /*<<< orphan*/  Dp_setDate ; 
 int /*<<< orphan*/  Dp_setFullYear ; 
 int /*<<< orphan*/  Dp_setHours ; 
 int /*<<< orphan*/  Dp_setMilliseconds ; 
 int /*<<< orphan*/  Dp_setMinutes ; 
 int /*<<< orphan*/  Dp_setMonth ; 
 int /*<<< orphan*/  Dp_setSeconds ; 
 int /*<<< orphan*/  Dp_setTime ; 
 int /*<<< orphan*/  Dp_setUTCDate ; 
 int /*<<< orphan*/  Dp_setUTCFullYear ; 
 int /*<<< orphan*/  Dp_setUTCHours ; 
 int /*<<< orphan*/  Dp_setUTCMilliseconds ; 
 int /*<<< orphan*/  Dp_setUTCMinutes ; 
 int /*<<< orphan*/  Dp_setUTCMonth ; 
 int /*<<< orphan*/  Dp_setUTCSeconds ; 
 int /*<<< orphan*/  Dp_toDateString ; 
 int /*<<< orphan*/  Dp_toISOString ; 
 int /*<<< orphan*/  Dp_toJSON ; 
 int /*<<< orphan*/  Dp_toString ; 
 int /*<<< orphan*/  Dp_toTimeString ; 
 int /*<<< orphan*/  Dp_toUTCString ; 
 int /*<<< orphan*/  Dp_valueOf ; 
 int /*<<< orphan*/  JS_DONTENUM ; 
 int /*<<< orphan*/  jsB_Date ; 
 int /*<<< orphan*/  jsB_new_Date ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*) ; 

void FUNC4(js_State *J)
{
	J->Date_prototype->u.number = 0;

	FUNC3(J, J->Date_prototype);
	{
		FUNC0(J, "Date.prototype.valueOf", Dp_valueOf, 0);
		FUNC0(J, "Date.prototype.toString", Dp_toString, 0);
		FUNC0(J, "Date.prototype.toDateString", Dp_toDateString, 0);
		FUNC0(J, "Date.prototype.toTimeString", Dp_toTimeString, 0);
		FUNC0(J, "Date.prototype.toLocaleString", Dp_toString, 0);
		FUNC0(J, "Date.prototype.toLocaleDateString", Dp_toDateString, 0);
		FUNC0(J, "Date.prototype.toLocaleTimeString", Dp_toTimeString, 0);
		FUNC0(J, "Date.prototype.toUTCString", Dp_toUTCString, 0);

		FUNC0(J, "Date.prototype.getTime", Dp_valueOf, 0);
		FUNC0(J, "Date.prototype.getFullYear", Dp_getFullYear, 0);
		FUNC0(J, "Date.prototype.getUTCFullYear", Dp_getUTCFullYear, 0);
		FUNC0(J, "Date.prototype.getMonth", Dp_getMonth, 0);
		FUNC0(J, "Date.prototype.getUTCMonth", Dp_getUTCMonth, 0);
		FUNC0(J, "Date.prototype.getDate", Dp_getDate, 0);
		FUNC0(J, "Date.prototype.getUTCDate", Dp_getUTCDate, 0);
		FUNC0(J, "Date.prototype.getDay", Dp_getDay, 0);
		FUNC0(J, "Date.prototype.getUTCDay", Dp_getUTCDay, 0);
		FUNC0(J, "Date.prototype.getHours", Dp_getHours, 0);
		FUNC0(J, "Date.prototype.getUTCHours", Dp_getUTCHours, 0);
		FUNC0(J, "Date.prototype.getMinutes", Dp_getMinutes, 0);
		FUNC0(J, "Date.prototype.getUTCMinutes", Dp_getUTCMinutes, 0);
		FUNC0(J, "Date.prototype.getSeconds", Dp_getSeconds, 0);
		FUNC0(J, "Date.prototype.getUTCSeconds", Dp_getUTCSeconds, 0);
		FUNC0(J, "Date.prototype.getMilliseconds", Dp_getMilliseconds, 0);
		FUNC0(J, "Date.prototype.getUTCMilliseconds", Dp_getUTCMilliseconds, 0);
		FUNC0(J, "Date.prototype.getTimezoneOffset", Dp_getTimezoneOffset, 0);

		FUNC0(J, "Date.prototype.setTime", Dp_setTime, 1);
		FUNC0(J, "Date.prototype.setMilliseconds", Dp_setMilliseconds, 1);
		FUNC0(J, "Date.prototype.setUTCMilliseconds", Dp_setUTCMilliseconds, 1);
		FUNC0(J, "Date.prototype.setSeconds", Dp_setSeconds, 2);
		FUNC0(J, "Date.prototype.setUTCSeconds", Dp_setUTCSeconds, 2);
		FUNC0(J, "Date.prototype.setMinutes", Dp_setMinutes, 3);
		FUNC0(J, "Date.prototype.setUTCMinutes", Dp_setUTCMinutes, 3);
		FUNC0(J, "Date.prototype.setHours", Dp_setHours, 4);
		FUNC0(J, "Date.prototype.setUTCHours", Dp_setUTCHours, 4);
		FUNC0(J, "Date.prototype.setDate", Dp_setDate, 1);
		FUNC0(J, "Date.prototype.setUTCDate", Dp_setUTCDate, 1);
		FUNC0(J, "Date.prototype.setMonth", Dp_setMonth, 2);
		FUNC0(J, "Date.prototype.setUTCMonth", Dp_setUTCMonth, 2);
		FUNC0(J, "Date.prototype.setFullYear", Dp_setFullYear, 3);
		FUNC0(J, "Date.prototype.setUTCFullYear", Dp_setUTCFullYear, 3);

		/* ES5 */
		FUNC0(J, "Date.prototype.toISOString", Dp_toISOString, 0);
		FUNC0(J, "Date.prototype.toJSON", Dp_toJSON, 1);
	}
	FUNC2(J, jsB_Date, jsB_new_Date, "Date", 0); /* 1 */
	{
		FUNC0(J, "Date.parse", D_parse, 1);
		FUNC0(J, "Date.UTC", D_UTC, 7);

		/* ES5 */
		FUNC0(J, "Date.now", D_now, 0);
	}
	FUNC1(J, "Date", JS_DONTENUM);
}