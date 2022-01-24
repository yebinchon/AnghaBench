#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int BOT ; 
 int /*<<< orphan*/ * STACK ; 
 int TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void FUNC3(js_State *J)
{
	int i;
	FUNC1("stack {\n");
	for (i = 0; i < TOP; ++i) {
		FUNC2(i == BOT ? '>' : ' ');
		FUNC1("%4d: ", i);
		FUNC0(J, STACK[i]);
		FUNC2('\n');
	}
	FUNC1("}\n");
}