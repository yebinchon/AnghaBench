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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(js_State *J)
{
	const char *name = "Error";
	const char *message = "";

	if (!FUNC2(J, -1))
		FUNC5(J, "not an object");

	if (FUNC1(J, 0, "name"))
		name = FUNC4(J, -1);
	if (FUNC1(J, 0, "message"))
		message = FUNC4(J, -1);

	if (name[0] == 0)
		FUNC3(J, message);
	else if (message[0] == 0)
		FUNC3(J, name);
	else {
		FUNC3(J, name);
		FUNC3(J, ": ");
		FUNC0(J);
		FUNC3(J, message);
		FUNC0(J);
	}
}