#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char lookahead; scalar_t__ newline; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void FUNC3(js_State *J)
{
	if (J->lookahead == ';') {
		FUNC1(J);
		return;
	}
	if (J->newline || J->lookahead == '}' || J->lookahead == 0)
		return;
	FUNC0(J, "unexpected token: %s (expected ';')", FUNC2(J->lookahead));
}