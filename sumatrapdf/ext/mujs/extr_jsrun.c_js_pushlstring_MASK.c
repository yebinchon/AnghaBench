#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_3__ {char* shrstr; int /*<<< orphan*/  memstr; } ;
struct TYPE_4__ {TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  JS_TMEMSTR ; 
 int /*<<< orphan*/  JS_TSHRSTR ; 
 TYPE_2__* STACK ; 
 size_t TOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  js_Value ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  type ; 

void FUNC3(js_State *J, const char *v, int n)
{
	FUNC0(1);
	if (n <= FUNC2(js_Value, type)) {
		char *s = STACK[TOP].u.shrstr;
		while (n--) *s++ = *v++;
		*s = 0;
		STACK[TOP].type = JS_TSHRSTR;
	} else {
		STACK[TOP].type = JS_TMEMSTR;
		STACK[TOP].u.memstr = FUNC1(J, v, n);
	}
	++TOP;
}