#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int lexchar; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(js_State *J)
{
	if (FUNC0(J, '\\')) {
		if (FUNC0(J, 'u')) {
			int x = 0;
			if (!FUNC2(J->lexchar)) { goto error; } x |= FUNC4(J->lexchar) << 12; FUNC3(J);
			if (!FUNC2(J->lexchar)) { goto error; } x |= FUNC4(J->lexchar) << 8; FUNC3(J);
			if (!FUNC2(J->lexchar)) { goto error; } x |= FUNC4(J->lexchar) << 4; FUNC3(J);
			if (!FUNC2(J->lexchar)) { goto error; } x |= FUNC4(J->lexchar);
			J->lexchar = x;
			return;
		}
error:
		FUNC1(J, "unexpected escape sequence");
	}
}