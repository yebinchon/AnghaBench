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
typedef  scalar_t__ Rune ;

/* Variables and functions */
 int /*<<< orphan*/  UTFmax ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC5 (char*,scalar_t__*) ; 

__attribute__((used)) static void FUNC6(js_State *J)
{
	char buf[UTFmax + 1];
	const char *s = FUNC0(J, 0);
	int pos = FUNC4(J, 1);
	Rune rune = FUNC3(J, s, pos);
	if (rune > 0) {
		buf[FUNC5(buf, &rune)] = 0;
		FUNC2(J, buf);
	} else {
		FUNC1(J, "");
	}
}